package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class U1 {

    /* renamed from: a  reason: collision with root package name */
    public String f24238a;

    /* renamed from: b  reason: collision with root package name */
    public long f24239b;

    /* renamed from: c  reason: collision with root package name */
    public int f24240c;

    /* renamed from: d  reason: collision with root package name */
    public String f24241d;

    public U1(String eventType, String str) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        this.f24238a = eventType;
        this.f24241d = str;
        this.f24239b = System.currentTimeMillis();
    }

    public final String a() {
        String str = this.f24241d;
        if (str == null) {
            return "";
        }
        return str;
    }
}
