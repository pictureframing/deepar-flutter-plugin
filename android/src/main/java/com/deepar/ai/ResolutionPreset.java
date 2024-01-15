package com.deepar.ai;

public class ResolutionPreset {
    static final ResolutionPreset P1920x1080 = new ResolutionPreset(1920, 1080);
    static final ResolutionPreset P1080x1920 = new ResolutionPreset(1080, 1920);

    int width;
    int height;

    public ResolutionPreset(int width, int height) {
        this.width = width;
        this.height = height;
    }

    static ResolutionPreset getResolutionPreset(String resolution) {
        switch (resolution) {
            case "low":
                return new ResolutionPreset(640, 480);

            case "lowPortrait":
                return new ResolutionPreset(480, 640);

            case "medium":
                return new ResolutionPreset(640, 360);

            case "mediumPortrait":
                return new ResolutionPreset(360, 640);

            case "high":
                return new ResolutionPreset(1280, 720);

            case "highPortrait":
                return new ResolutionPreset(720, 1280);

            case "veryHigh":
                return ResolutionPreset.P1920x1080;

            case "veryHighPortrait":
                return ResolutionPreset.P1080x1920;
        }
        return null;
    }

    int getWidth() {
        return this.width;
    }

    int getHeight() {
        return this.height;
    }

}
