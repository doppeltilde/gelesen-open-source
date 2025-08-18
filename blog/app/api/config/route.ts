import { NextResponse } from 'next/server';
import fs from 'fs';
import path from 'path';

export async function GET() {
    try {
        const configPath = path.join(process.cwd(), 'content/config/site.json');
        const config = JSON.parse(fs.readFileSync(configPath, 'utf8'));
        return NextResponse.json(config.features);
    } catch (error) {
        return NextResponse.json({ darkMode: false });
    }
} 