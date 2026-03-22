package com.ss.ttvideoengine.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes6.dex */
public interface FormatProvider {
    public static final FormatProvider DEFAULT = new Default();
    public static final int FORMAT_M3U8 = 1;
    public static final int FORMAT_MPD = 2;
    public static final int FORMAT_NORMAL = 0;

    /* loaded from: classes6.dex */
    public static class Default implements FormatProvider {
        private static boolean isM3u8(String str) {
            if (!str.contains(".m3u8?") && !str.endsWith(".m3u8") && !str.contains(".m3u?") && !str.endsWith(".m3u")) {
                return false;
            }
            return true;
        }

        private static boolean isMpd(String str) {
            if (!str.endsWith(".mpd") && !str.contains(".mpd?")) {
                return false;
            }
            return true;
        }

        @Override // com.ss.ttvideoengine.utils.FormatProvider
        public int provideFormat(@NonNull String str) {
            if (str == null) {
                return 0;
            }
            String lowerCase = str.toLowerCase();
            if (isM3u8(lowerCase)) {
                return 1;
            }
            if (!isMpd(lowerCase)) {
                return 0;
            }
            return 2;
        }
    }

    /* loaded from: classes6.dex */
    public static class FormatProviderHolder {
        private static FormatProvider sInstance = FormatProvider.DEFAULT;

        public static FormatProvider get() {
            FormatProvider formatProvider = sInstance;
            if (formatProvider == null) {
                return FormatProvider.DEFAULT;
            }
            return formatProvider;
        }

        public static boolean isM3u8(@Nullable String str) {
            if (str == null || get().provideFormat(str) != 1) {
                return false;
            }
            return true;
        }

        public static boolean isMpd(@Nullable String str) {
            if (str == null || get().provideFormat(str) != 2) {
                return false;
            }
            return true;
        }

        public static void set(FormatProvider formatProvider) {
            sInstance = formatProvider;
        }
    }

    int provideFormat(@NonNull String str);
}
