package com.mbridge.msdk.tracker;

import android.database.Cursor;
import androidx.work.PeriodicWorkRequest;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.unity3d.services.UnityAdsConstants;
import java.util.List;
/* compiled from: Utils.java */
/* loaded from: classes6.dex */
class y {
    public static long a(int i10, long j10, long j11) {
        if (i10 <= 0 || j10 == 0 || i10 <= 10) {
            return j11;
        }
        if (i10 <= 20) {
            return ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
        }
        if (i10 <= 30) {
            return UnityAdsConstants.Timeout.INIT_TIMEOUT_MS;
        }
        if (i10 <= 40) {
            return 180000L;
        }
        if (i10 <= 50) {
            return 240000L;
        }
        return PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(Object obj) {
        return obj == null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Object obj) {
        return obj != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(List<?> list) {
        return list == null || list.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(List<i> list) {
        if (b((List<?>) list)) {
            return false;
        }
        for (i iVar : list) {
            if (!b(iVar)) {
                e a10 = iVar.a();
                if (!b(a10) && a10.c() == 1) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0102  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<com.mbridge.msdk.tracker.i> b(android.database.Cursor r19) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.tracker.y.b(android.database.Cursor):java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(e eVar) {
        return a((Object) eVar) && eVar.c() == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Cursor cursor) {
        try {
            if (!a((Object) cursor) || cursor.isClosed()) {
                return;
            }
            cursor.close();
        } catch (Exception unused) {
        }
    }
}
