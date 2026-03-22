package com.inmobi.media;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes5.dex */
public final class Td {

    /* renamed from: a  reason: collision with root package name */
    public static final Td f24224a;

    /* renamed from: b  reason: collision with root package name */
    public static final Td f24225b;

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ Td[] f24226c;

    static {
        Td td2 = new Td("SDK", 0);
        f24224a = td2;
        Td td3 = new Td("TEMPLATE", 1);
        f24225b = td3;
        Td[] tdArr = {td2, td3};
        f24226c = tdArr;
        kotlin.enums.a.a(tdArr);
    }

    public Td(String str, int i10) {
    }

    public static Td valueOf(String str) {
        return (Td) Enum.valueOf(Td.class, str);
    }

    public static Td[] values() {
        return (Td[]) f24226c.clone();
    }
}
