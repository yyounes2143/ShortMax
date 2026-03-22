package com.facebook.imageformat;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DefaultImageFormats.kt */
@Metadata
/* loaded from: classes3.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f15603a = new b();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final c f15604b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final c f15605c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final c f15606d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final c f15607e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final c f15608f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final c f15609g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final c f15610h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final c f15611i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final c f15612j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    public static final c f15613k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final c f15614l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final c f15615m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    public static final c f15616n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    public static final c f15617o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    public static final List<c> f15618p;

    static {
        c cVar = new c("JPEG", "jpeg");
        f15604b = cVar;
        c cVar2 = new c("PNG", "png");
        f15605c = cVar2;
        c cVar3 = new c("GIF", "gif");
        f15606d = cVar3;
        c cVar4 = new c("BMP", "bmp");
        f15607e = cVar4;
        c cVar5 = new c("ICO", "ico");
        f15608f = cVar5;
        c cVar6 = new c("WEBP_SIMPLE", "webp");
        f15609g = cVar6;
        c cVar7 = new c("WEBP_LOSSLESS", "webp");
        f15610h = cVar7;
        c cVar8 = new c("WEBP_EXTENDED", "webp");
        f15611i = cVar8;
        c cVar9 = new c("WEBP_EXTENDED_WITH_ALPHA", "webp");
        f15612j = cVar9;
        c cVar10 = new c("WEBP_ANIMATED", "webp");
        f15613k = cVar10;
        c cVar11 = new c("HEIF", "heif");
        f15614l = cVar11;
        f15615m = new c("DNG", "dng");
        c cVar12 = new c("BINARY_XML", "xml");
        f15616n = cVar12;
        c cVar13 = new c("AVIF", "avif");
        f15617o = cVar13;
        f15618p = CollectionsKt.q(cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7, cVar8, cVar9, cVar10, cVar11, cVar12, cVar13);
    }

    private b() {
    }

    public static final boolean a(@NotNull c imageFormat) {
        Intrinsics.checkNotNullParameter(imageFormat, "imageFormat");
        if (imageFormat != f15609g && imageFormat != f15610h && imageFormat != f15611i && imageFormat != f15612j) {
            return false;
        }
        return true;
    }

    public static final boolean b(@NotNull c imageFormat) {
        Intrinsics.checkNotNullParameter(imageFormat, "imageFormat");
        if (!a(imageFormat) && imageFormat != f15613k) {
            return false;
        }
        return true;
    }
}
