package com.moloco.sdk.internal;

import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.DpSize;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.ad.i;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import com.ss.ttm.player.MediaPlayer;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SourceDebugExtension({"SMAP\nAggregatedOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,283:1\n155#2:284\n*S KotlinDebug\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt\n*L\n282#1:284\n*E\n"})
/* loaded from: classes6.dex */
public final class h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ms.i f32144a = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.internal.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return h.m();
        }
    });

    /* renamed from: b  reason: collision with root package name */
    public static final long f32145b = Color.Companion.m1879getWhite0d7_KjU();

    /* renamed from: c  reason: collision with root package name */
    public static final long f32146c = f0.a();

    /* renamed from: d  reason: collision with root package name */
    public static final long f32147d;

    @SourceDebugExtension({"SMAP\nAggregatedOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$determineSkipCloseBehaviorFromDec$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 TextUnit.kt\nandroidx/compose/ui/unit/TextUnit\n*L\n1#1,283:1\n155#2:284\n155#2:286\n1#3:285\n128#4,2:287\n*S KotlinDebug\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$determineSkipCloseBehaviorFromDec$1\n*L\n183#1:284\n186#1:286\n189#1:287,2\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a implements Function2<Composer, Integer, at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<? extends Unit>, ? super Function1<? super a.AbstractC0597a.c, ? extends Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, ? extends Unit>> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.internal.ortb.model.t f32148a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.internal.ortb.model.i f32149b;

        public a(com.moloco.sdk.internal.ortb.model.t tVar, com.moloco.sdk.internal.ortb.model.i iVar) {
            this.f32148a = tVar;
            this.f32149b = iVar;
        }

        @Composable
        public final at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit> a(Composer composer, int i10) {
            long j10;
            composer.startReplaceableGroup(-1299178940);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1299178940, i10, -1, "com.moloco.sdk.internal.determineSkipCloseBehaviorFromDec.<anonymous> (AggregatedOptions.kt:182)");
            }
            float m4049constructorimpl = Dp.m4049constructorimpl(this.f32148a.c());
            long m4071DpSizeYgX7TsA = DpKt.m4071DpSizeYgX7TsA(m4049constructorimpl, m4049constructorimpl);
            Alignment a10 = h.a(this.f32148a.f(), this.f32148a.h());
            PaddingValues m440PaddingValues0680j_4 = PaddingKt.m440PaddingValues0680j_4(Dp.m4049constructorimpl(this.f32148a.g()));
            long e10 = this.f32148a.e();
            long sp2 = TextUnitKt.getSp(this.f32148a.c());
            TextUnitKt.m4243checkArithmeticR2X_6o(sp2);
            long pack = TextUnitKt.pack(TextUnit.m4228getRawTypeimpl(sp2), TextUnit.m4230getValueimpl(sp2) / 2);
            long m4152timesGh9hcWk = DpSize.m4152timesGh9hcWk(m4071DpSizeYgX7TsA, 0.4f);
            Color a11 = this.f32148a.a();
            if (a11 == null) {
                j10 = h.f32145b;
            } else {
                j10 = a11.m1852unboximpl();
            }
            at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit> a12 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.p.a(a10, m440PaddingValues0680j_4, e10, m4071DpSizeYgX7TsA, pack, h.k(m4152timesGh9hcWk, j10, composer, 0), null, this.f32149b, composer, 0, 64);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceableGroup();
            return a12;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<? extends Unit>, ? super Function1<? super a.AbstractC0597a.c, ? extends Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, ? extends Unit> invoke(Composer composer, Integer num) {
            return a(composer, num.intValue());
        }
    }

    @SourceDebugExtension({"SMAP\nAggregatedOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$toCloseButton$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 TextUnit.kt\nandroidx/compose/ui/unit/TextUnit\n*L\n1#1,283:1\n155#2:284\n155#2:286\n1#3:285\n128#4,2:287\n*S KotlinDebug\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$toCloseButton$1\n*L\n205#1:284\n209#1:286\n212#1:287,2\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class b implements Function2<Composer, Integer, at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<? extends Unit>, ? super Function1<? super a.AbstractC0597a.c, ? extends Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, ? extends Unit>> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ boolean f32150a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.internal.ortb.model.t f32151b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.internal.ortb.model.i f32152c;

        public b(boolean z10, com.moloco.sdk.internal.ortb.model.t tVar, com.moloco.sdk.internal.ortb.model.i iVar) {
            this.f32150a = z10;
            this.f32151b = tVar;
            this.f32152c = iVar;
        }

        @Composable
        public final at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit> a(Composer composer, int i10) {
            long j10;
            at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit> a10;
            composer.startReplaceableGroup(2061132145);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(2061132145, i10, -1, "com.moloco.sdk.internal.toCloseButton.<anonymous> (AggregatedOptions.kt:200)");
            }
            if (this.f32150a) {
                a10 = null;
            } else {
                float m4049constructorimpl = Dp.m4049constructorimpl(this.f32151b.c());
                long m4071DpSizeYgX7TsA = DpKt.m4071DpSizeYgX7TsA(m4049constructorimpl, m4049constructorimpl);
                Alignment a11 = h.a(this.f32151b.f(), this.f32151b.h());
                PaddingValues m440PaddingValues0680j_4 = PaddingKt.m440PaddingValues0680j_4(Dp.m4049constructorimpl(this.f32151b.g()));
                long e10 = this.f32151b.e();
                long sp2 = TextUnitKt.getSp(this.f32151b.c());
                TextUnitKt.m4243checkArithmeticR2X_6o(sp2);
                long pack = TextUnitKt.pack(TextUnit.m4228getRawTypeimpl(sp2), TextUnit.m4230getValueimpl(sp2) / 2);
                Painter painterResource = PainterResources_androidKt.painterResource(com.moloco.sdk.o.f33601f, composer, 0);
                long m4152timesGh9hcWk = DpSize.m4152timesGh9hcWk(m4071DpSizeYgX7TsA, 0.45f);
                Color a12 = this.f32151b.a();
                if (a12 == null) {
                    j10 = h.f32145b;
                } else {
                    j10 = a12.m1852unboximpl();
                }
                a10 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.c0.a(a11, m440PaddingValues0680j_4, e10, m4071DpSizeYgX7TsA, pack, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.c0.b(painterResource, m4152timesGh9hcWk, null, j10, composer, 0, 4), null, this.f32152c, composer, 0, 64);
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceableGroup();
            return a10;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<? extends Unit>, ? super Function1<? super a.AbstractC0597a.c, ? extends Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, ? extends Unit> invoke(Composer composer, Integer num) {
            return a(composer, num.intValue());
        }
    }

    @SourceDebugExtension({"SMAP\nAggregatedOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$toVastOptions$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,283:1\n155#2:284\n155#2:286\n1#3:285\n*S KotlinDebug\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$toVastOptions$1\n*L\n78#1:284\n82#1:286\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class c implements Function2<Composer, Integer, at.r<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, ? extends Unit>, ? super Function1<? super Boolean, ? extends Unit>, ? super Composer, ? super Integer, ? extends Unit>> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.internal.ortb.model.p f32153a;

        public c(com.moloco.sdk.internal.ortb.model.p pVar) {
            this.f32153a = pVar;
        }

        @Composable
        public final at.r<BoxScope, Boolean, Boolean, Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, Unit>, Function1<? super Boolean, Unit>, Composer, Integer, Unit> a(Composer composer, int i10) {
            long j10;
            long j11;
            composer.startReplaceableGroup(1012987991);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1012987991, i10, -1, "com.moloco.sdk.internal.toVastOptions.<anonymous> (AggregatedOptions.kt:77)");
            }
            ms.n c10 = this.f32153a.g().c();
            if (c10 == null) {
                j10 = h.f32147d;
            } else {
                float m4049constructorimpl = Dp.m4049constructorimpl(c10.g());
                j10 = DpKt.m4071DpSizeYgX7TsA(m4049constructorimpl, m4049constructorimpl);
            }
            Alignment a10 = h.a(this.f32153a.g().e(), this.f32153a.g().h());
            PaddingValues m440PaddingValues0680j_4 = PaddingKt.m440PaddingValues0680j_4(Dp.m4049constructorimpl(this.f32153a.g().g()));
            long m4152timesGh9hcWk = DpSize.m4152timesGh9hcWk(j10, 0.6f);
            long d10 = this.f32153a.g().d();
            Color a11 = this.f32153a.g().a();
            if (a11 == null) {
                j11 = h.f32145b;
            } else {
                j11 = a11.m1852unboximpl();
            }
            at.r<BoxScope, Boolean, Boolean, Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, Unit>, Function1<? super Boolean, Unit>, Composer, Integer, Unit> c11 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.n.c(j10, m4152timesGh9hcWk, null, j11, a10, m440PaddingValues0680j_4, d10, PainterResources_androidKt.painterResource(com.moloco.sdk.o.f33607l, composer, 0), PainterResources_androidKt.painterResource(com.moloco.sdk.o.f33608m, composer, 0), null, composer, 0, 516);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceableGroup();
            return c11;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ at.r<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function2<? super a.AbstractC0597a.c, ? super a.AbstractC0597a.c.EnumC0599a, ? extends Unit>, ? super Function1<? super Boolean, ? extends Unit>, ? super Composer, ? super Integer, ? extends Unit> invoke(Composer composer, Integer num) {
            return a(composer, num.intValue());
        }
    }

    @SourceDebugExtension({"SMAP\nAggregatedOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$toVastOptions$2\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 TextUnit.kt\nandroidx/compose/ui/unit/TextUnit\n*L\n1#1,283:1\n155#2:284\n155#2:286\n1#3:285\n128#4,2:287\n*S KotlinDebug\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$toVastOptions$2\n*L\n94#1:284\n98#1:286\n101#1:287,2\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class d implements Function2<Composer, Integer, at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<? extends Unit>, ? super Function1<? super a.AbstractC0597a.c, ? extends Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, ? extends Unit>> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.internal.ortb.model.p f32154a;

        public d(com.moloco.sdk.internal.ortb.model.p pVar) {
            this.f32154a = pVar;
        }

        @Composable
        public final at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit> a(Composer composer, int i10) {
            long j10;
            at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit> a10;
            composer.startReplaceableGroup(-168563086);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-168563086, i10, -1, "com.moloco.sdk.internal.toVastOptions.<anonymous> (AggregatedOptions.kt:92)");
            }
            com.moloco.sdk.internal.ortb.model.t i11 = this.f32154a.i();
            if (i11 == null) {
                a10 = null;
            } else {
                com.moloco.sdk.internal.ortb.model.p pVar = this.f32154a;
                float m4049constructorimpl = Dp.m4049constructorimpl(i11.c());
                long m4071DpSizeYgX7TsA = DpKt.m4071DpSizeYgX7TsA(m4049constructorimpl, m4049constructorimpl);
                Alignment a11 = h.a(i11.f(), i11.h());
                PaddingValues m440PaddingValues0680j_4 = PaddingKt.m440PaddingValues0680j_4(Dp.m4049constructorimpl(i11.g()));
                long e10 = i11.e();
                long sp2 = TextUnitKt.getSp(i11.c());
                TextUnitKt.m4243checkArithmeticR2X_6o(sp2);
                long pack = TextUnitKt.pack(TextUnit.m4228getRawTypeimpl(sp2), TextUnit.m4230getValueimpl(sp2) / 2);
                long m4152timesGh9hcWk = DpSize.m4152timesGh9hcWk(m4071DpSizeYgX7TsA, 0.4f);
                Color a12 = i11.a();
                if (a12 == null) {
                    j10 = h.f32145b;
                } else {
                    j10 = a12.m1852unboximpl();
                }
                a10 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.p.a(a11, m440PaddingValues0680j_4, e10, m4071DpSizeYgX7TsA, pack, h.k(m4152timesGh9hcWk, j10, composer, 0), null, pVar.d(), composer, 0, 64);
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceableGroup();
            return a10;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ at.a<? super BoxScope, ? super Boolean, ? super Boolean, ? super Function0<? extends Unit>, ? super Function1<? super a.AbstractC0597a.c, ? extends Unit>, ? super Boolean, ? super ms.n, ? super ms.n, ? super Composer, ? super Integer, ? extends Unit> invoke(Composer composer, Integer num) {
            return a(composer, num.intValue());
        }
    }

    @SourceDebugExtension({"SMAP\nAggregatedOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$toVastOptions$3\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,283:1\n155#2:284\n*S KotlinDebug\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$toVastOptions$3\n*L\n118#1:284\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class e implements Function2<Composer, Integer, at.r<? super BoxScope, ? super Boolean, ? super kt.i<? extends i.a>, ? super Function1<? super a.AbstractC0597a.c, ? extends Unit>, ? super Function0<? extends Unit>, ? super Composer, ? super Integer, ? extends Unit>> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ boolean f32155a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.internal.ortb.model.p f32156b;

        public e(boolean z10, com.moloco.sdk.internal.ortb.model.p pVar) {
            this.f32155a = z10;
            this.f32156b = pVar;
        }

        @Composable
        public final at.r<BoxScope, Boolean, kt.i<? extends i.a>, Function1<? super a.AbstractC0597a.c, Unit>, Function0<Unit>, Composer, Integer, Unit> a(Composer composer, int i10) {
            at.r<BoxScope, Boolean, kt.i<? extends i.a>, Function1<? super a.AbstractC0597a.c, Unit>, Function0<Unit>, Composer, Integer, Unit> rVar;
            com.moloco.sdk.internal.ortb.model.g e10;
            long a10;
            composer.startReplaceableGroup(616016756);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(616016756, i10, -1, "com.moloco.sdk.internal.toVastOptions.<anonymous> (AggregatedOptions.kt:110)");
            }
            if (this.f32155a || (e10 = this.f32156b.e()) == null) {
                rVar = null;
            } else {
                Alignment a11 = h.a(e10.d(), e10.h());
                PaddingValues m440PaddingValues0680j_4 = PaddingKt.m440PaddingValues0680j_4(Dp.m4049constructorimpl(e10.f()));
                String g10 = e10.g();
                long c10 = e10.c();
                Color a12 = e10.a();
                if (a12 != null) {
                    a10 = a12.m1852unboximpl();
                } else {
                    a10 = f0.a();
                }
                rVar = f0.b(a11, m440PaddingValues0680j_4, g10, c10, a10, e10.e(), composer, 0, 0);
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceableGroup();
            return rVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ at.r<? super BoxScope, ? super Boolean, ? super kt.i<? extends i.a>, ? super Function1<? super a.AbstractC0597a.c, ? extends Unit>, ? super Function0<? extends Unit>, ? super Composer, ? super Integer, ? extends Unit> invoke(Composer composer, Integer num) {
            return a(composer, num.intValue());
        }
    }

    @SourceDebugExtension({"SMAP\nAggregatedOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$toVastOptions$4\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,283:1\n155#2:284\n*S KotlinDebug\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$toVastOptions$4\n*L\n136#1:284\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class f implements Function2<Composer, Integer, at.p<? super BoxScope, ? super Boolean, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, ? super Composer, ? super Integer, ? extends Unit>> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ boolean f32157a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.internal.ortb.model.p f32158b;

        public f(boolean z10, com.moloco.sdk.internal.ortb.model.p pVar) {
            this.f32157a = z10;
            this.f32158b = pVar;
        }

        @Composable
        public final at.p<BoxScope, Boolean, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, Composer, Integer, Unit> a(Composer composer, int i10) {
            at.p<BoxScope, Boolean, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, Composer, Integer, Unit> pVar;
            com.moloco.sdk.internal.ortb.model.q h10;
            composer.startReplaceableGroup(962638324);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(962638324, i10, -1, "com.moloco.sdk.internal.toVastOptions.<anonymous> (AggregatedOptions.kt:128)");
            }
            if (this.f32157a || (h10 = this.f32158b.h()) == null) {
                pVar = null;
            } else {
                pVar = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.n.b(h.a(h10.c(), h10.e()), PaddingKt.m440PaddingValues0680j_4(Dp.m4049constructorimpl(h10.d())), h10.a(), composer, 0, 0);
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceableGroup();
            return pVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ at.p<? super BoxScope, ? super Boolean, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.i, ? super Composer, ? super Integer, ? extends Unit> invoke(Composer composer, Integer num) {
            return a(composer, num.intValue());
        }
    }

    @SourceDebugExtension({"SMAP\nAggregatedOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$toVastOptions$5\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,283:1\n155#2:284\n*S KotlinDebug\n*F\n+ 1 AggregatedOptions.kt\ncom/moloco/sdk/internal/AggregatedOptionsKt$toVastOptions$5\n*L\n149#1:284\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class g implements Function2<Composer, Integer, at.q<? super BoxScope, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j, ? super Function0<? extends Unit>, ? super Function0<? extends Unit>, ? super Composer, ? super Integer, ? extends Unit>> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.internal.ortb.model.p f32159a;

        public g(com.moloco.sdk.internal.ortb.model.p pVar) {
            this.f32159a = pVar;
        }

        @Composable
        public final at.q<BoxScope, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j, Function0<Unit>, Function0<Unit>, Composer, Integer, Unit> a(Composer composer, int i10) {
            at.q<BoxScope, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j, Function0<Unit>, Function0<Unit>, Composer, Integer, Unit> a10;
            composer.startReplaceableGroup(524680050);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(524680050, i10, -1, "com.moloco.sdk.internal.toVastOptions.<anonymous> (AggregatedOptions.kt:142)");
            }
            com.moloco.sdk.internal.ortb.model.u j10 = this.f32159a.j();
            composer.startReplaceableGroup(-1135751215);
            if (j10 == null) {
                a10 = null;
            } else {
                a10 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.h.a(h.a(j10.a(), j10.d()), PaddingKt.m440PaddingValues0680j_4(Dp.m4049constructorimpl(j10.c())), composer, 0, 0);
            }
            composer.endReplaceableGroup();
            if (a10 == null) {
                a10 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.h.a(null, null, composer, 0, 3);
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceableGroup();
            return a10;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ at.q<? super BoxScope, ? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.j, ? super Function0<? extends Unit>, ? super Function0<? extends Unit>, ? super Composer, ? super Integer, ? extends Unit> invoke(Composer composer, Integer num) {
            return a(composer, num.intValue());
        }
    }

    static {
        float f10 = 30;
        f32147d = DpKt.m4071DpSizeYgX7TsA(Dp.m4049constructorimpl(f10), Dp.m4049constructorimpl(f10));
    }

    @NotNull
    public static final Alignment a(@NotNull com.moloco.sdk.internal.ortb.model.l horizontalAlignment, @NotNull com.moloco.sdk.internal.ortb.model.v verticalAlignment) {
        Intrinsics.checkNotNullParameter(horizontalAlignment, "horizontalAlignment");
        Intrinsics.checkNotNullParameter(verticalAlignment, "verticalAlignment");
        com.moloco.sdk.internal.ortb.model.v vVar = com.moloco.sdk.internal.ortb.model.v.f32490b;
        if (verticalAlignment == vVar && (horizontalAlignment == com.moloco.sdk.internal.ortb.model.l.f32406b || horizontalAlignment == com.moloco.sdk.internal.ortb.model.l.f32409e)) {
            return Alignment.Companion.getTopStart();
        }
        if (verticalAlignment == vVar && horizontalAlignment == com.moloco.sdk.internal.ortb.model.l.f32407c) {
            return Alignment.Companion.getTopCenter();
        }
        if (verticalAlignment == vVar && (horizontalAlignment == com.moloco.sdk.internal.ortb.model.l.f32408d || horizontalAlignment == com.moloco.sdk.internal.ortb.model.l.f32410f)) {
            return Alignment.Companion.getTopEnd();
        }
        com.moloco.sdk.internal.ortb.model.v vVar2 = com.moloco.sdk.internal.ortb.model.v.f32491c;
        if (verticalAlignment == vVar2 && (horizontalAlignment == com.moloco.sdk.internal.ortb.model.l.f32406b || horizontalAlignment == com.moloco.sdk.internal.ortb.model.l.f32409e)) {
            return Alignment.Companion.getCenterStart();
        }
        if (verticalAlignment == vVar2 && horizontalAlignment == com.moloco.sdk.internal.ortb.model.l.f32407c) {
            return Alignment.Companion.getCenter();
        }
        if (verticalAlignment == vVar2 && (horizontalAlignment == com.moloco.sdk.internal.ortb.model.l.f32408d || horizontalAlignment == com.moloco.sdk.internal.ortb.model.l.f32410f)) {
            return Alignment.Companion.getCenterEnd();
        }
        com.moloco.sdk.internal.ortb.model.v vVar3 = com.moloco.sdk.internal.ortb.model.v.f32492d;
        if (verticalAlignment == vVar3 && (horizontalAlignment == com.moloco.sdk.internal.ortb.model.l.f32406b || horizontalAlignment == com.moloco.sdk.internal.ortb.model.l.f32409e)) {
            return Alignment.Companion.getBottomStart();
        }
        if (verticalAlignment == vVar3 && horizontalAlignment == com.moloco.sdk.internal.ortb.model.l.f32407c) {
            return Alignment.Companion.getBottomCenter();
        }
        if (verticalAlignment == vVar3 && (horizontalAlignment == com.moloco.sdk.internal.ortb.model.l.f32408d || horizontalAlignment == com.moloco.sdk.internal.ortb.model.l.f32410f)) {
            return Alignment.Companion.getBottomEnd();
        }
        return Alignment.Companion.getTopStart();
    }

    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.p b(com.moloco.sdk.internal.ortb.model.p pVar, boolean z10) {
        int i10;
        com.moloco.sdk.internal.ortb.model.k d10;
        ms.n a10;
        int d11 = pVar.c().d();
        at.t e10 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.b.e(0L, h(z10, pVar.c(), pVar.f(), pVar.d()), 1, null);
        com.moloco.sdk.internal.ortb.model.j f10 = pVar.f();
        if (f10 != null && (d10 = f10.d()) != null && (a10 = d10.a()) != null) {
            i10 = a10.g();
        } else {
            i10 = 0;
        }
        return new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.p(d11, e10, i10, g(pVar.c(), z10, null, 2, null));
    }

    @NotNull
    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.r c() {
        return d(p());
    }

    @NotNull
    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.r d(@NotNull com.moloco.sdk.internal.ortb.model.p pVar) {
        Intrinsics.checkNotNullParameter(pVar, "<this>");
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.p b10 = b(pVar, true);
        return new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.r(l(pVar, true), b10, b10);
    }

    public static final Function2<Composer, Integer, at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit>> f(com.moloco.sdk.internal.ortb.model.t tVar, boolean z10, com.moloco.sdk.internal.ortb.model.i iVar) {
        return new b(z10, tVar, iVar);
    }

    public static /* synthetic */ Function2 g(com.moloco.sdk.internal.ortb.model.t tVar, boolean z10, com.moloco.sdk.internal.ortb.model.i iVar, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            iVar = null;
        }
        return f(tVar, z10, iVar);
    }

    @NotNull
    public static final Function2<Composer, Integer, at.a<BoxScope, Boolean, Boolean, Function0<Unit>, Function1<? super a.AbstractC0597a.c, Unit>, Boolean, ms.n, ms.n, Composer, Integer, Unit>> h(boolean z10, @NotNull com.moloco.sdk.internal.ortb.model.t close, @Nullable com.moloco.sdk.internal.ortb.model.j jVar, @Nullable com.moloco.sdk.internal.ortb.model.i iVar) {
        Intrinsics.checkNotNullParameter(close, "close");
        if (jVar == null) {
            return f(close, z10, iVar);
        }
        return new a(close, iVar);
    }

    @NotNull
    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.r i() {
        return j(p());
    }

    @NotNull
    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.r j(@NotNull com.moloco.sdk.internal.ortb.model.p pVar) {
        Intrinsics.checkNotNullParameter(pVar, "<this>");
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.p b10 = b(pVar, false);
        return new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.r(l(pVar, false), b10, b10);
    }

    @Composable
    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.z k(long j10, long j11, Composer composer, int i10) {
        composer.startReplaceableGroup(-868162195);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-868162195, i10, -1, "com.moloco.sdk.internal.defaultMolocoSkipAfterCountdownButtonPart (AggregatedOptions.kt:159)");
        }
        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.z b10 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.p.b(PainterResources_androidKt.painterResource(com.moloco.sdk.o.f33602g, composer, 0), j10, null, j11, composer, ((i10 << 3) & 112) | ((i10 << 6) & 7168), 4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return b10;
    }

    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.f0 l(com.moloco.sdk.internal.ortb.model.p pVar, boolean z10) {
        Boolean bool;
        int i10;
        boolean z11;
        boolean z12;
        int i11;
        com.moloco.sdk.internal.ortb.model.k d10;
        ms.n a10;
        boolean f10 = pVar.g().f();
        if (pVar.i() == null) {
            bool = null;
        } else {
            bool = Boolean.TRUE;
        }
        Boolean bool2 = bool;
        com.moloco.sdk.internal.ortb.model.t i12 = pVar.i();
        if (i12 != null) {
            i10 = i12.d();
        } else {
            i10 = 0;
        }
        com.moloco.sdk.internal.ortb.model.a a11 = pVar.a();
        if (a11 != null && a11.b() && pVar.a().d()) {
            z11 = true;
        } else {
            z11 = false;
        }
        com.moloco.sdk.internal.ortb.model.a a12 = pVar.a();
        if (a12 != null && a12.b()) {
            z12 = true;
        } else {
            z12 = false;
        }
        int d11 = pVar.c().d();
        com.moloco.sdk.internal.ortb.model.j f11 = pVar.f();
        if (f11 != null && (d10 = f11.d()) != null && (a10 = d10.a()) != null) {
            i11 = a10.g();
        } else {
            i11 = 0;
        }
        return new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.f0(f10, bool2, i10, d11, i11, z11, z12, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.n.h(0L, new c(pVar), f(pVar.c(), z10, pVar.d()), new d(pVar), new e(z10, pVar), y.b(pVar.k()), new f(z10, pVar), new g(pVar), null, null, 769, null));
    }

    public static final com.moloco.sdk.internal.ortb.model.p m() {
        long j10 = f32146c;
        int b10 = ms.n.b(30);
        com.moloco.sdk.internal.ortb.model.l lVar = com.moloco.sdk.internal.ortb.model.l.f32408d;
        com.moloco.sdk.internal.ortb.model.v vVar = com.moloco.sdk.internal.ortb.model.v.f32490b;
        com.moloco.sdk.internal.ortb.model.t tVar = new com.moloco.sdk.internal.ortb.model.t(5, 10, b10, lVar, vVar, j10, (Color) null, 64, (DefaultConstructorMarker) null);
        return new com.moloco.sdk.internal.ortb.model.p(tVar, tVar, new com.moloco.sdk.internal.ortb.model.q(0, com.moloco.sdk.internal.ortb.model.l.f32407c, com.moloco.sdk.internal.ortb.model.v.f32492d, j10, null), new com.moloco.sdk.internal.ortb.model.o(false, 10, com.moloco.sdk.internal.ortb.model.l.f32406b, vVar, j10, (ms.n) null, (Color) null, 96, (DefaultConstructorMarker) null), (com.moloco.sdk.internal.ortb.model.g) null, true, new com.moloco.sdk.internal.ortb.model.a(false, false, (String) null, 6, (DefaultConstructorMarker) null), (com.moloco.sdk.internal.ortb.model.u) null, (com.moloco.sdk.internal.ortb.model.j) null, (com.moloco.sdk.internal.ortb.model.i) null, (int) MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500, (DefaultConstructorMarker) null);
    }

    public static final com.moloco.sdk.internal.ortb.model.p p() {
        return (com.moloco.sdk.internal.ortb.model.p) f32144a.getValue();
    }
}
