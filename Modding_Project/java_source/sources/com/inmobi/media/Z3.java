package com.inmobi.media;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes5.dex */
public final class Z3 {

    /* renamed from: a  reason: collision with root package name */
    public static final Z3 f24433a;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ Z3[] f24434b;

    static {
        Z3 z32 = new Z3("URL", 0);
        f24433a = z32;
        Z3[] z3Arr = {z32, new Z3("HTML", 1)};
        f24434b = z3Arr;
        kotlin.enums.a.a(z3Arr);
    }

    public Z3(String str, int i10) {
    }

    public static Z3 valueOf(String str) {
        return (Z3) Enum.valueOf(Z3.class, str);
    }

    public static Z3[] values() {
        return (Z3[]) f24434b.clone();
    }
}
