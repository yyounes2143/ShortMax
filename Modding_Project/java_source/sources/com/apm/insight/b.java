package com.apm.insight;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import org.json.JSONArray;
/* compiled from: CrashCallbackWrapper.java */
/* loaded from: classes2.dex */
public final class b implements ICrashCallback, IOOMCallback {

    /* renamed from: a  reason: collision with root package name */
    private IOOMCallback f6716a;

    /* renamed from: b  reason: collision with root package name */
    private ICrashCallback f6717b;

    /* renamed from: c  reason: collision with root package name */
    private String f6718c;

    public b(String str, ICrashCallback iCrashCallback) {
        this.f6718c = str;
        this.f6717b = iCrashCallback;
    }

    public final void a(@NonNull CrashType crashType, @Nullable Throwable th2, @Nullable Thread thread, long j10, JSONArray jSONArray) {
        if (this.f6716a == null || jSONArray == null) {
            return;
        }
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            if (TextUtils.equals(a.a(jSONArray.optJSONObject(i10), "header", TTVideoEngineInterface.PLAY_API_KEY_APPID), this.f6718c)) {
                this.f6716a.onCrash(crashType, th2, thread, j10);
            }
        }
    }

    @Override // com.apm.insight.ICrashCallback
    public final void onCrash(@NonNull CrashType crashType, @Nullable String str, @Nullable Thread thread) {
    }

    @Override // com.apm.insight.IOOMCallback
    public final void onCrash(@NonNull CrashType crashType, @Nullable Throwable th2, @Nullable Thread thread, long j10) {
    }

    public b(String str, IOOMCallback iOOMCallback) {
        this.f6718c = str;
        this.f6716a = iOOMCallback;
    }

    public final void a(@NonNull CrashType crashType, @Nullable String str, @Nullable Thread thread, JSONArray jSONArray) {
        if (this.f6717b == null || jSONArray == null) {
            return;
        }
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            if (TextUtils.equals(a.a(jSONArray.optJSONObject(i10), "header", TTVideoEngineInterface.PLAY_API_KEY_APPID), this.f6718c)) {
                this.f6717b.onCrash(crashType, str, thread);
            }
        }
    }

    public final void a(@NonNull CrashType crashType, @Nullable String str, @Nullable String str2, String str3) {
        d a10;
        if (this.f6717b == null || (a10 = d.a(this.f6718c)) == null || !a10.a(str3, str2)) {
            return;
        }
        this.f6717b.onCrash(crashType, str, null);
    }
}
