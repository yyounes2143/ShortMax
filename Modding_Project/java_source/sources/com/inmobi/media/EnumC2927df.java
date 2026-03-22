package com.inmobi.media;

import com.huawei.hms.framework.network.grs.GrsBaseInfo;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: com.inmobi.media.df  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class EnumC2927df {

    /* renamed from: a  reason: collision with root package name */
    public static final EnumC2927df f24611a;

    /* renamed from: b  reason: collision with root package name */
    public static final EnumC2927df f24612b;

    /* renamed from: c  reason: collision with root package name */
    public static final EnumC2927df f24613c;

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ EnumC2927df[] f24614d;

    static {
        EnumC2927df enumC2927df = new EnumC2927df(GrsBaseInfo.CountryCodeSource.UNKNOWN, 0);
        f24611a = enumC2927df;
        EnumC2927df enumC2927df2 = new EnumC2927df("HIDDEN", 1);
        f24612b = enumC2927df2;
        EnumC2927df enumC2927df3 = new EnumC2927df("VISIBLE", 2);
        f24613c = enumC2927df3;
        EnumC2927df[] enumC2927dfArr = {enumC2927df, enumC2927df2, enumC2927df3};
        f24614d = enumC2927dfArr;
        kotlin.enums.a.a(enumC2927dfArr);
    }

    public EnumC2927df(String str, int i10) {
    }

    public static EnumC2927df valueOf(String str) {
        return (EnumC2927df) Enum.valueOf(EnumC2927df.class, str);
    }

    public static EnumC2927df[] values() {
        return (EnumC2927df[]) f24614d.clone();
    }
}
