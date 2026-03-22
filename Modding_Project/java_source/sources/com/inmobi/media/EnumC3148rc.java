package com.inmobi.media;

import androidx.browser.trusted.sharing.ShareTarget;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: com.inmobi.media.rc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class EnumC3148rc {

    /* renamed from: a  reason: collision with root package name */
    public static final EnumC3148rc f25246a;

    /* renamed from: b  reason: collision with root package name */
    public static final EnumC3148rc f25247b;

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ EnumC3148rc[] f25248c;

    static {
        EnumC3148rc enumC3148rc = new EnumC3148rc(ShareTarget.METHOD_GET, 0);
        f25246a = enumC3148rc;
        EnumC3148rc enumC3148rc2 = new EnumC3148rc(ShareTarget.METHOD_POST, 1);
        f25247b = enumC3148rc2;
        EnumC3148rc[] enumC3148rcArr = {enumC3148rc, enumC3148rc2, new EnumC3148rc("PUT", 2), new EnumC3148rc("DELETE", 3), new EnumC3148rc("PATCH", 4)};
        f25248c = enumC3148rcArr;
        kotlin.enums.a.a(enumC3148rcArr);
    }

    public EnumC3148rc(String str, int i10) {
    }

    public static EnumC3148rc valueOf(String str) {
        return (EnumC3148rc) Enum.valueOf(EnumC3148rc.class, str);
    }

    public static EnumC3148rc[] values() {
        return (EnumC3148rc[]) f25248c.clone();
    }
}
