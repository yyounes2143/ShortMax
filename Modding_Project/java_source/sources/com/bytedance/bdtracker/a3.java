package com.bytedance.bdtracker;

import android.content.SharedPreferences;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.unity3d.services.UnityAdsConstants;
/* loaded from: classes3.dex */
public class a3 {

    /* renamed from: h  reason: collision with root package name */
    public static final long[][] f11861h = {new long[]{ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS, 0, 10}, new long[]{UnityAdsConstants.Timeout.INIT_TIMEOUT_MS, 5, 1}, new long[]{240000, 5, 1}, new long[]{480000, 4, 1}, new long[]{960000, 2, 1}};

    /* renamed from: a  reason: collision with root package name */
    public String f11862a;

    /* renamed from: b  reason: collision with root package name */
    public p1 f11863b;

    /* renamed from: c  reason: collision with root package name */
    public int f11864c;

    /* renamed from: d  reason: collision with root package name */
    public int f11865d;

    /* renamed from: e  reason: collision with root package name */
    public int f11866e;

    /* renamed from: f  reason: collision with root package name */
    public long f11867f;

    /* renamed from: g  reason: collision with root package name */
    public long f11868g;

    public a3(String str, p1 p1Var) {
        this.f11863b = p1Var;
        this.f11862a = str;
        this.f11864c = 0;
        SharedPreferences sharedPreferences = p1Var.f12307f;
        if (System.currentTimeMillis() - sharedPreferences.getLong(this.f11862a + "downgrade_time", 0L) < 10800000) {
            SharedPreferences sharedPreferences2 = this.f11863b.f12307f;
            this.f11864c = sharedPreferences2.getInt(this.f11862a + "downgrade_index", 0);
            return;
        }
        SharedPreferences.Editor edit = this.f11863b.f12307f.edit();
        SharedPreferences.Editor remove = edit.remove(this.f11862a + "downgrade_time");
        remove.remove(this.f11862a + "downgrade_index").apply();
    }

    public final boolean a() {
        return this.f11863b.f12304c.isCongestionControlEnable();
    }

    public void b() {
        if (!a()) {
            return;
        }
        if (this.f11864c < f11861h.length - 1) {
            long currentTimeMillis = System.currentTimeMillis();
            this.f11864c++;
            this.f11865d = 1;
            this.f11866e = 0;
            this.f11867f = currentTimeMillis;
            this.f11868g = currentTimeMillis;
            this.f11863b.f12307f.edit().putLong(this.f11862a + "downgrade_time", currentTimeMillis).putInt(this.f11862a + "downgrade_index", this.f11864c).apply();
            return;
        }
        this.f11866e = 0;
    }

    public void c() {
        if (!a()) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        int i10 = this.f11866e;
        long[][] jArr = f11861h;
        int i11 = this.f11864c;
        if (i10 < jArr[i11][1] && currentTimeMillis - this.f11868g <= 1800000) {
            this.f11866e = i10 + 1;
        } else if (i11 > 0) {
            long currentTimeMillis2 = System.currentTimeMillis();
            this.f11864c--;
            this.f11865d = 1;
            this.f11866e = 1;
            this.f11867f = currentTimeMillis2;
            this.f11868g = currentTimeMillis2;
            this.f11863b.f12307f.edit().putLong(this.f11862a + "downgrade_time", currentTimeMillis2).putInt(this.f11862a + "downgrade_index", this.f11864c).apply();
        }
    }
}
