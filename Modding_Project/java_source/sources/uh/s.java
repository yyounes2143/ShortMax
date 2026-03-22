package uh;

import com.applovin.shadow.okhttp3.internal.ws.RealWebSocket;
import com.ss.ttvideoengine.download.DownloadTask;
import com.startshorts.androidplayer.log.Logger;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DownloadExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class s {
    @NotNull
    public static final String a(@Nullable Long l10) {
        if (l10 == null) {
            return "0MB";
        }
        float f10 = 1024;
        float longValue = ((float) l10.longValue()) / f10;
        if (longValue < 1024.0f) {
            return new BigDecimal(String.valueOf(longValue)).setScale(2, RoundingMode.HALF_UP).floatValue() + "KB";
        }
        float f11 = longValue / f10;
        if (f11 > 1024.0f) {
            float f12 = f11 / f10;
            return new BigDecimal(String.valueOf(f12)).setScale(2, RoundingMode.HALF_UP).floatValue() + "GB";
        }
        return new BigDecimal(String.valueOf(f11)).setScale(2, RoundingMode.HALF_UP).floatValue() + "MB";
    }

    public static final void b(@Nullable String str) {
        if (str == null) {
            str = "err null string";
        }
        Logger.f41511a.h("download_episode_tag", str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0026, code lost:
        if (r2.intValue() == 1) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0032, code lost:
        if (r2.intValue() == 2) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:?, code lost:
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int c(@org.jetbrains.annotations.Nullable java.lang.Integer r2, int r3) {
        /*
            if (r2 != 0) goto L3
            goto L9
        L3:
            int r0 = r2.intValue()
            if (r0 == 0) goto L40
        L9:
            if (r2 != 0) goto Lc
            goto L13
        Lc:
            int r0 = r2.intValue()
            r1 = 5
            if (r0 == r1) goto L40
        L13:
            if (r2 != 0) goto L16
            goto L1e
        L16:
            int r0 = r2.intValue()
            r1 = 4
            if (r0 != r1) goto L1e
            goto L40
        L1e:
            if (r2 != 0) goto L21
            goto L2a
        L21:
            int r0 = r2.intValue()
            r1 = 1
            if (r0 != r1) goto L2a
        L28:
            r3 = r1
            goto L40
        L2a:
            if (r2 != 0) goto L2d
            goto L35
        L2d:
            int r0 = r2.intValue()
            r1 = 2
            if (r0 != r1) goto L35
            goto L28
        L35:
            if (r2 != 0) goto L38
            goto L40
        L38:
            int r2 = r2.intValue()
            r0 = 3
            if (r2 != r0) goto L40
            r3 = r0
        L40:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: uh.s.c(java.lang.Integer, int):int");
    }

    @NotNull
    public static final String d(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 5) {
                                return "";
                            }
                            return "完成";
                        }
                        return "取消中";
                    }
                    return "暂停中";
                }
                return "下载中";
            }
            return "等待";
        }
        return "初始化";
    }

    @NotNull
    public static final String e(long j10) {
        if (j10 < RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
            return j10 + " B";
        } else if (j10 < 1048576) {
            String format = String.format("%.1f KB", Arrays.copyOf(new Object[]{Double.valueOf(j10 / 1024.0d)}, 1));
            Intrinsics.checkNotNullExpressionValue(format, "format(...)");
            return format;
        } else if (j10 < 1073741824) {
            String format2 = String.format("%.1f MB", Arrays.copyOf(new Object[]{Double.valueOf((j10 / 1024.0d) / 1024.0d)}, 1));
            Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
            return format2;
        } else {
            String format3 = String.format("%.2f GB", Arrays.copyOf(new Object[]{Double.valueOf(((j10 / 1024.0d) / 1024.0d) / 1024.0d)}, 1));
            Intrinsics.checkNotNullExpressionValue(format3, "format(...)");
            return format3;
        }
    }

    @NotNull
    public static final String f(@NotNull DownloadTask downloadTask) {
        Intrinsics.checkNotNullParameter(downloadTask, "<this>");
        return "videoId:" + downloadTask.getVideoId() + " state:" + d(downloadTask.getState());
    }
}
