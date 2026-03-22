package com.inmobi.media;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: com.inmobi.media.sc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class EnumC3164sc {

    /* renamed from: a  reason: collision with root package name */
    public static final EnumC3164sc f25271a;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ EnumC3164sc[] f25272b;

    static {
        EnumC3164sc enumC3164sc = new EnumC3164sc("HIGH", 0);
        EnumC3164sc enumC3164sc2 = new EnumC3164sc("LOW", 1);
        f25271a = enumC3164sc2;
        EnumC3164sc[] enumC3164scArr = {enumC3164sc, enumC3164sc2};
        f25272b = enumC3164scArr;
        kotlin.enums.a.a(enumC3164scArr);
    }

    public EnumC3164sc(String str, int i10) {
    }

    public static EnumC3164sc valueOf(String str) {
        return (EnumC3164sc) Enum.valueOf(EnumC3164sc.class, str);
    }

    public static EnumC3164sc[] values() {
        return (EnumC3164sc[]) f25272b.clone();
    }
}
