package com.inmobi.media;

import com.google.ads.mediation.inmobi.InMobiNetworkKeys;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: com.inmobi.media.a7  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class EnumC2868a7 {

    /* renamed from: a  reason: collision with root package name */
    public static final EnumC2868a7 f24480a;

    /* renamed from: b  reason: collision with root package name */
    public static final EnumC2868a7 f24481b;

    /* renamed from: c  reason: collision with root package name */
    public static final EnumC2868a7 f24482c;

    /* renamed from: d  reason: collision with root package name */
    public static final EnumC2868a7 f24483d;

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ EnumC2868a7[] f24484e;

    static {
        EnumC2868a7 enumC2868a7 = new EnumC2868a7("INFO", 0);
        f24480a = enumC2868a7;
        EnumC2868a7 enumC2868a72 = new EnumC2868a7("DEBUG", 1);
        f24481b = enumC2868a72;
        EnumC2868a7 enumC2868a73 = new EnumC2868a7("ERROR", 2);
        f24482c = enumC2868a73;
        EnumC2868a7 enumC2868a74 = new EnumC2868a7(InMobiNetworkKeys.STATE, 3);
        f24483d = enumC2868a74;
        EnumC2868a7[] enumC2868a7Arr = {enumC2868a7, enumC2868a72, enumC2868a73, enumC2868a74};
        f24484e = enumC2868a7Arr;
        kotlin.enums.a.a(enumC2868a7Arr);
    }

    public EnumC2868a7(String str, int i10) {
    }

    public static EnumC2868a7 valueOf(String str) {
        return (EnumC2868a7) Enum.valueOf(EnumC2868a7.class, str);
    }

    public static EnumC2868a7[] values() {
        return (EnumC2868a7[]) f24484e.clone();
    }
}
