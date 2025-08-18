"use client";

import { useState, useEffect } from "react";
import { ThemeProvider } from "@/components/theme-provider";

export default function ClientLayout({ children }: { children: React.ReactNode }) {
    const [isDarkModeEnabled, setIsDarkModeEnabled] = useState(true);

    useEffect(() => {
        fetch("/api/config")
            .then((res) => res.json())
            .then((features) => setIsDarkModeEnabled(features.darkMode))
            .catch(() => setIsDarkModeEnabled(false));
    }, []);

    return isDarkModeEnabled ? (
        <ThemeProvider
            attribute="class"
            defaultTheme="system"
            enableSystem
            disableTransitionOnChange
        >
            {children}
        </ThemeProvider>
    ) : (
        <ThemeProvider
            attribute="class"
            defaultTheme="light"
            forcedTheme="light"
            enableSystem={false}
            disableTransitionOnChange
        >
            {children}
        </ThemeProvider>
    );
}
