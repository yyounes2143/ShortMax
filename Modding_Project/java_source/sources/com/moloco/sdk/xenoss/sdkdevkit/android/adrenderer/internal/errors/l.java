package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors;

import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes6.dex */
public final class l implements c {

    /* renamed from: a  reason: collision with root package name */
    public static final l f34049a = new l("VAST_AD_EXOPLAYER_VIDEO_LAYER_ERROR", 0);

    /* renamed from: b  reason: collision with root package name */
    public static final l f34050b = new l("VAST_AD_EXOPLAYER_STYLED_PLAYER_VIEW_INFLATE_EXCEPTION_ERROR", 1);

    /* renamed from: c  reason: collision with root package name */
    public static final l f34051c = new l("VAST_AD_EXOPLAYER_SET_MEDIA_ITEM_EXCEPTION_ERROR", 2);

    /* renamed from: d  reason: collision with root package name */
    public static final l f34052d = new l("VAST_AD_EXOPLAYER_SET_MEDIA_FILE_NOT_EXISTS_ERROR", 3);

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ l[] f34053e;

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ ss.a f34054f;

    static {
        l[] b10 = b();
        f34053e = b10;
        f34054f = kotlin.enums.a.a(b10);
    }

    public l(String str, int i10) {
    }

    public static final /* synthetic */ l[] b() {
        return new l[]{f34049a, f34050b, f34051c, f34052d};
    }

    @NotNull
    public static ss.a<l> c() {
        return f34054f;
    }

    public static l valueOf(String str) {
        return (l) Enum.valueOf(l.class, str);
    }

    public static l[] values() {
        return (l[]) f34053e.clone();
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.c
    @NotNull
    public String a() {
        return name();
    }
}
