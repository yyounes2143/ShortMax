package com.inmobi.media;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes5.dex */
public final class Ca {

    /* renamed from: a  reason: collision with root package name */
    public static final Ca f23536a;

    /* renamed from: b  reason: collision with root package name */
    public static final Ca f23537b;

    /* renamed from: c  reason: collision with root package name */
    public static final Ca f23538c;

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ Ca[] f23539d;

    static {
        Ca ca2 = new Ca("STOPPED", 0);
        f23536a = ca2;
        Ca ca3 = new Ca("PAUSED", 1);
        f23537b = ca3;
        Ca ca4 = new Ca("STARTED", 2);
        f23538c = ca4;
        Ca[] caArr = {ca2, ca3, ca4};
        f23539d = caArr;
        kotlin.enums.a.a(caArr);
    }

    public Ca(String str, int i10) {
    }

    public static Ca valueOf(String str) {
        return (Ca) Enum.valueOf(Ca.class, str);
    }

    public static Ca[] values() {
        return (Ca[]) f23539d.clone();
    }
}
