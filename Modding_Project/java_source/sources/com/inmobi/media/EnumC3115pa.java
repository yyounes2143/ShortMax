package com.inmobi.media;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: com.inmobi.media.pa  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class EnumC3115pa {

    /* renamed from: a  reason: collision with root package name */
    public static final EnumC3115pa f25154a;

    /* renamed from: b  reason: collision with root package name */
    public static final EnumC3115pa f25155b;

    /* renamed from: c  reason: collision with root package name */
    public static final EnumC3115pa f25156c;

    /* renamed from: d  reason: collision with root package name */
    public static final EnumC3115pa f25157d;

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ EnumC3115pa[] f25158e;

    static {
        EnumC3115pa enumC3115pa = new EnumC3115pa("PORTRAIT", 0);
        f25154a = enumC3115pa;
        EnumC3115pa enumC3115pa2 = new EnumC3115pa("LANDSCAPE", 1);
        f25155b = enumC3115pa2;
        EnumC3115pa enumC3115pa3 = new EnumC3115pa("REVERSE_PORTRAIT", 2);
        f25156c = enumC3115pa3;
        EnumC3115pa enumC3115pa4 = new EnumC3115pa("REVERSE_LANDSCAPE", 3);
        f25157d = enumC3115pa4;
        EnumC3115pa[] enumC3115paArr = {enumC3115pa, enumC3115pa2, enumC3115pa3, enumC3115pa4};
        f25158e = enumC3115paArr;
        kotlin.enums.a.a(enumC3115paArr);
    }

    public EnumC3115pa(String str, int i10) {
    }

    public static EnumC3115pa valueOf(String str) {
        return (EnumC3115pa) Enum.valueOf(EnumC3115pa.class, str);
    }

    public static EnumC3115pa[] values() {
        return (EnumC3115pa[]) f25158e.clone();
    }
}
