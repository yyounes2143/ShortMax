package com.apm.insight.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.b.i;
import com.apm.insight.runtime.m;
/* compiled from: AlogUploadManager.java */
/* loaded from: classes2.dex */
public class a implements ICrashCallback {

    /* renamed from: d  reason: collision with root package name */
    private static volatile a f6710d;

    /* renamed from: a  reason: collision with root package name */
    private volatile String f6711a;

    /* renamed from: b  reason: collision with root package name */
    private volatile i.a f6712b;

    /* renamed from: c  reason: collision with root package name */
    private volatile i.a f6713c;

    /* renamed from: e  reason: collision with root package name */
    private volatile boolean f6714e = false;

    private a() {
    }

    public static a a() {
        if (f6710d == null) {
            synchronized (a.class) {
                try {
                    if (f6710d == null) {
                        f6710d = new a();
                    }
                } finally {
                }
            }
        }
        return f6710d;
    }

    @Override // com.apm.insight.ICrashCallback
    public void onCrash(@NonNull CrashType crashType, @Nullable String str, @Nullable Thread thread) {
        crashType.equals(CrashType.NATIVE);
    }

    public final void a(String str, i.a aVar, i.a aVar2) {
        this.f6711a = str;
        this.f6712b = aVar;
        this.f6713c = aVar2;
        if (this.f6714e) {
            return;
        }
        this.f6714e = true;
        m.a().a(new Runnable() { // from class: com.apm.insight.a.a.1
            @Override // java.lang.Runnable
            public final void run() {
            }
        });
    }
}
