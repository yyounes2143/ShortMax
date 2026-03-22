package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t;
import com.ss.ttm.player.MediaPlayer;
import gt.g0;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
@SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,940:1\n82#1:942\n117#1:943\n82#1:944\n117#1:945\n82#1:946\n117#1:947\n82#1:948\n117#1:949\n82#1:950\n117#1:951\n82#1:952\n117#1:953\n82#1:954\n117#1:955\n82#1:956\n117#1:957\n82#1:958\n117#1:959\n82#1:960\n117#1:961\n82#1:962\n117#1:963\n82#1:964\n117#1:965\n82#1:966\n117#1:967\n82#1:968\n117#1:969\n82#1:970\n117#1:971\n82#1:972\n117#1:973\n82#1:974\n117#1:975\n82#1:976\n117#1:977\n82#1:978\n117#1:979\n82#1:980\n117#1:981\n82#1:982\n117#1:983\n82#1:984\n117#1:985\n82#1:986\n117#1:987\n82#1:988\n117#1:989\n1#2:941\n*S KotlinDebug\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n*L\n140#1:942\n140#1:943\n163#1:944\n163#1:945\n194#1:946\n194#1:947\n235#1:948\n235#1:949\n274#1:950\n274#1:951\n293#1:952\n293#1:953\n310#1:954\n310#1:955\n328#1:956\n328#1:957\n345#1:958\n345#1:959\n367#1:960\n367#1:961\n406#1:962\n406#1:963\n469#1:964\n469#1:965\n486#1:966\n486#1:967\n515#1:968\n515#1:969\n560#1:970\n560#1:971\n580#1:972\n580#1:973\n627#1:974\n627#1:975\n656#1:976\n656#1:977\n673#1:978\n673#1:979\n699#1:980\n699#1:981\n746#1:982\n746#1:983\n771#1:984\n771#1:985\n807#1:986\n807#1:987\n838#1:988\n838#1:989\n*E\n"})
/* loaded from: classes6.dex */
public final class k {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ms.i f35199a = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.w
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return k.w();
        }
    });

    /* renamed from: b  reason: collision with root package name */
    public static final NumberFormat f35200b = NumberFormat.getPercentInstance();

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseInLineTag")
    /* loaded from: classes6.dex */
    public static final class A extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35201h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35202i;

        /* renamed from: j  reason: collision with root package name */
        public Object f35203j;

        /* renamed from: k  reason: collision with root package name */
        public Object f35204k;

        /* renamed from: l  reason: collision with root package name */
        public Object f35205l;

        /* renamed from: m  reason: collision with root package name */
        public Object f35206m;

        /* renamed from: n  reason: collision with root package name */
        public Object f35207n;

        /* renamed from: o  reason: collision with root package name */
        public Object f35208o;

        /* renamed from: p  reason: collision with root package name */
        public /* synthetic */ Object f35209p;

        /* renamed from: q  reason: collision with root package name */
        public int f35210q;

        public A(rs.c<? super A> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35209p = obj;
            this.f35210q |= Integer.MIN_VALUE;
            return k.k(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseLinearTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {124, 125, 126, 127, 128, 129}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n*L\n1#1,117:1\n408#2,14:118\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class B extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35211h;

        /* renamed from: i  reason: collision with root package name */
        public int f35212i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35213j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35214k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35215l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35216m;

        /* renamed from: n  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35217n;

        /* renamed from: o  reason: collision with root package name */
        public final /* synthetic */ List f35218o;

        /* renamed from: p  reason: collision with root package name */
        public final /* synthetic */ List f35219p;

        /* renamed from: q  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35220q;

        /* renamed from: r  reason: collision with root package name */
        public final /* synthetic */ boolean f35221r;

        /* renamed from: s  reason: collision with root package name */
        public final /* synthetic */ List f35222s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public B(XmlPullParser xmlPullParser, rs.c cVar, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, Ref.ObjectRef objectRef3, List list, List list2, Ref.ObjectRef objectRef4, boolean z10, List list3) {
            super(2, cVar);
            this.f35214k = xmlPullParser;
            this.f35215l = objectRef;
            this.f35216m = objectRef2;
            this.f35217n = objectRef3;
            this.f35218o = list;
            this.f35219p = list2;
            this.f35220q = objectRef4;
            this.f35221r = z10;
            this.f35222s = list3;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((B) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            B b10 = new B(this.f35214k, cVar, this.f35215l, this.f35216m, this.f35217n, this.f35218o, this.f35219p, this.f35220q, this.f35221r, this.f35222s);
            b10.f35213j = obj;
            return b10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:24:0x008c  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x0152  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x0157  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x01c8  */
        /* JADX WARN: Type inference failed for: r6v45, types: [T, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0096 -> B:98:0x01c1). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a0 -> B:98:0x01c1). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a8 -> B:98:0x01c1). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00ae -> B:98:0x01c1). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00b9 -> B:98:0x01c1). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00cd -> B:98:0x01c1). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00da -> B:98:0x01c1). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00eb -> B:49:0x00ee). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x00fb -> B:98:0x01c1). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x010f -> B:98:0x01c1). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x011c -> B:98:0x01c1). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x0130 -> B:98:0x01c1). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x013a -> B:98:0x01c1). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:75:0x0158 -> B:98:0x01c1). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x0161 -> B:98:0x01c1). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:82:0x0176 -> B:98:0x01c1). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:85:0x0181 -> B:98:0x01c1). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:93:0x01a3 -> B:98:0x01c1). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:95:0x01bc -> B:98:0x01c1). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 512
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.B.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseLinearTag")
    /* loaded from: classes6.dex */
    public static final class C extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public boolean f35223h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35224i;

        /* renamed from: j  reason: collision with root package name */
        public Object f35225j;

        /* renamed from: k  reason: collision with root package name */
        public Object f35226k;

        /* renamed from: l  reason: collision with root package name */
        public Object f35227l;

        /* renamed from: m  reason: collision with root package name */
        public Object f35228m;

        /* renamed from: n  reason: collision with root package name */
        public Object f35229n;

        /* renamed from: o  reason: collision with root package name */
        public Object f35230o;

        /* renamed from: p  reason: collision with root package name */
        public /* synthetic */ Object f35231p;

        /* renamed from: q  reason: collision with root package name */
        public int f35232q;

        public C(rs.c<? super C> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35231p = obj;
            this.f35232q |= Integer.MIN_VALUE;
            return k.e0(null, false, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseMediaFileTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n*L\n1#1,117:1\n517#2,17:118\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class D extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35233h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35234i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35235j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35236k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35237l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35238m;

        /* renamed from: n  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35239n;

        /* renamed from: o  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35240o;

        /* renamed from: p  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35241p;

        /* renamed from: q  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35242q;

        /* renamed from: r  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35243r;

        /* renamed from: s  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35244s;

        /* renamed from: t  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35245t;

        /* renamed from: u  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35246u;

        /* renamed from: v  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35247v;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public D(XmlPullParser xmlPullParser, rs.c cVar, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, Ref.ObjectRef objectRef3, Ref.ObjectRef objectRef4, Ref.ObjectRef objectRef5, Ref.ObjectRef objectRef6, Ref.ObjectRef objectRef7, Ref.ObjectRef objectRef8, Ref.ObjectRef objectRef9, Ref.ObjectRef objectRef10, Ref.ObjectRef objectRef11, Ref.ObjectRef objectRef12) {
            super(2, cVar);
            this.f35235j = xmlPullParser;
            this.f35236k = objectRef;
            this.f35237l = objectRef2;
            this.f35238m = objectRef3;
            this.f35239n = objectRef4;
            this.f35240o = objectRef5;
            this.f35241p = objectRef6;
            this.f35242q = objectRef7;
            this.f35243r = objectRef8;
            this.f35244s = objectRef9;
            this.f35245t = objectRef10;
            this.f35246u = objectRef11;
            this.f35247v = objectRef12;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((D) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            D d10 = new D(this.f35235j, cVar, this.f35236k, this.f35237l, this.f35238m, this.f35239n, this.f35240o, this.f35241p, this.f35242q, this.f35243r, this.f35244s, this.f35245t, this.f35246u, this.f35247v);
            d10.f35234i = obj;
            return d10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v20, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v22, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r2v17, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r2v5, types: [T, java.lang.Boolean] */
        /* JADX WARN: Type inference failed for: r2v7, types: [T, java.lang.String] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String text;
            T t10;
            T t11;
            T t12;
            T t13;
            T t14;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f35233h == 0) {
                kotlin.f.b(obj);
                kotlinx.coroutines.i.g((g0) this.f35234i);
                if (k.n0(this.f35235j)) {
                    this.f35235j.nextTag();
                }
                if (k.i0(this.f35235j)) {
                    return Unit.f60915a;
                }
                if (k.p0(this.f35235j)) {
                    int depth = this.f35235j.getDepth();
                    while (this.f35235j.getDepth() >= depth) {
                        int depth2 = this.f35235j.getDepth() - depth;
                        if (depth2 != 0) {
                            if (depth2 == 1) {
                                k.p0(this.f35235j);
                            }
                        } else if (k.p0(this.f35235j)) {
                            XmlPullParser xmlPullParser = this.f35235j;
                            this.f35236k.element = k.G(xmlPullParser, "id");
                            this.f35237l.element = kotlin.coroutines.jvm.internal.a.a(Intrinsics.areEqual(k.G(xmlPullParser, "delivery"), "progressive"));
                            this.f35238m.element = k.G(xmlPullParser, "type");
                            Ref.ObjectRef objectRef = this.f35239n;
                            String G = k.G(xmlPullParser, "width");
                            T t15 = 0;
                            if (G != null) {
                                t10 = StringsKt.toIntOrNull(G);
                            } else {
                                t10 = 0;
                            }
                            objectRef.element = t10;
                            Ref.ObjectRef objectRef2 = this.f35240o;
                            String G2 = k.G(xmlPullParser, "height");
                            if (G2 != null) {
                                t11 = StringsKt.toIntOrNull(G2);
                            } else {
                                t11 = 0;
                            }
                            objectRef2.element = t11;
                            this.f35241p.element = k.G(xmlPullParser, "codec");
                            Ref.ObjectRef objectRef3 = this.f35242q;
                            String G3 = k.G(xmlPullParser, "bitrate");
                            if (G3 != null) {
                                t12 = StringsKt.toIntOrNull(G3);
                            } else {
                                t12 = 0;
                            }
                            objectRef3.element = t12;
                            Ref.ObjectRef objectRef4 = this.f35243r;
                            String G4 = k.G(xmlPullParser, "minBitrate");
                            if (G4 != null) {
                                t13 = StringsKt.toIntOrNull(G4);
                            } else {
                                t13 = 0;
                            }
                            objectRef4.element = t13;
                            Ref.ObjectRef objectRef5 = this.f35244s;
                            String G5 = k.G(xmlPullParser, "maxBitrate");
                            if (G5 != null) {
                                t14 = StringsKt.toIntOrNull(G5);
                            } else {
                                t14 = 0;
                            }
                            objectRef5.element = t14;
                            Ref.ObjectRef objectRef6 = this.f35245t;
                            String G6 = k.G(xmlPullParser, "scalable");
                            if (G6 != null) {
                                t15 = kotlin.coroutines.jvm.internal.a.a(Boolean.parseBoolean(G6));
                            }
                            objectRef6.element = t15;
                            this.f35246u.element = k.G(xmlPullParser, "apiFramework");
                        } else if (k.r0(this.f35235j) && (text = this.f35235j.getText()) != null && !StringsKt.t0(text)) {
                            String text2 = this.f35235j.getText();
                            Intrinsics.checkNotNullExpressionValue(text2, "getText(...)");
                            this.f35247v.element = StringsKt.v1(text2).toString();
                        } else if (k.l0(this.f35235j)) {
                            return Unit.f60915a;
                        }
                        this.f35235j.next();
                    }
                    return Unit.f60915a;
                }
                throw new XmlPullParserException("iterateCurrentTagEvents call is allowed only for START_TAG event");
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseMediaFileTag")
    /* loaded from: classes6.dex */
    public static final class E extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35248h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35249i;

        /* renamed from: j  reason: collision with root package name */
        public Object f35250j;

        /* renamed from: k  reason: collision with root package name */
        public Object f35251k;

        /* renamed from: l  reason: collision with root package name */
        public Object f35252l;

        /* renamed from: m  reason: collision with root package name */
        public Object f35253m;

        /* renamed from: n  reason: collision with root package name */
        public Object f35254n;

        /* renamed from: o  reason: collision with root package name */
        public Object f35255o;

        /* renamed from: p  reason: collision with root package name */
        public Object f35256p;

        /* renamed from: q  reason: collision with root package name */
        public Object f35257q;

        /* renamed from: r  reason: collision with root package name */
        public Object f35258r;

        /* renamed from: s  reason: collision with root package name */
        public Object f35259s;

        /* renamed from: t  reason: collision with root package name */
        public /* synthetic */ Object f35260t;

        /* renamed from: u  reason: collision with root package name */
        public int f35261u;

        public E(rs.c<? super E> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35260t = obj;
            this.f35261u |= Integer.MIN_VALUE;
            return k.l(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseMediaFilesTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {123}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n488#2,6:118\n495#2:125\n1#3:124\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class F extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35262h;

        /* renamed from: i  reason: collision with root package name */
        public int f35263i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35264j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35265k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ List f35266l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public F(XmlPullParser xmlPullParser, rs.c cVar, List list) {
            super(2, cVar);
            this.f35265k = xmlPullParser;
            this.f35266l = list;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((F) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            F f10 = new F(this.f35265k, cVar, this.f35266l);
            f10.f35264j = obj;
            return f10;
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0052  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0083  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00ce  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x005b -> B:49:0x00c7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0064 -> B:49:0x00c7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0072 -> B:49:0x00c7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x007c -> B:31:0x007f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x008f -> B:49:0x00c7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00a9 -> B:49:0x00c7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00c2 -> B:49:0x00c7). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r5.f35263i
                r2 = 1
                if (r1 == 0) goto L19
                if (r1 != r2) goto L11
                int r1 = r5.f35262h
                kotlin.f.b(r6)
                goto L7f
            L11:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L19:
                kotlin.f.b(r6)
                java.lang.Object r6 = r5.f35264j
                gt.g0 r6 = (gt.g0) r6
                kotlinx.coroutines.i.g(r6)
                org.xmlpull.v1.XmlPullParser r6 = r5.f35265k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.M(r6)
                if (r6 == 0) goto L30
                org.xmlpull.v1.XmlPullParser r6 = r5.f35265k
                r6.nextTag()
            L30:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35265k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.B(r6)
                if (r6 == 0) goto L3b
                kotlin.Unit r6 = kotlin.Unit.f60915a
                return r6
            L3b:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35265k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.Q(r6)
                if (r6 == 0) goto Ld1
                org.xmlpull.v1.XmlPullParser r6 = r5.f35265k
                int r6 = r6.getDepth()
                r1 = r6
            L4a:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35265k
                int r6 = r6.getDepth()
                if (r6 < r1) goto Lce
                org.xmlpull.v1.XmlPullParser r6 = r5.f35265k
                int r6 = r6.getDepth()
                int r6 = r6 - r1
                if (r6 == 0) goto L89
                if (r6 == r2) goto L5e
                goto Lc7
            L5e:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35265k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.Q(r6)
                if (r6 == 0) goto Lc7
                org.xmlpull.v1.XmlPullParser r6 = r5.f35265k
                java.lang.String r3 = r6.getName()
                java.lang.String r4 = "MediaFile"
                boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r4)
                if (r3 == 0) goto Lc7
                r5.f35262h = r1
                r5.f35263i = r2
                java.lang.Object r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.v0(r6, r5)
                if (r6 != r0) goto L7f
                return r0
            L7f:
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.s r6 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.s) r6
                if (r6 == 0) goto Lc7
                java.util.List r3 = r5.f35266l
                r3.add(r6)
                goto Lc7
            L89:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35265k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.Q(r6)
                if (r6 == 0) goto L92
                goto Lc7
            L92:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35265k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.V(r6)
                if (r6 == 0) goto Lbc
                org.xmlpull.v1.XmlPullParser r6 = r5.f35265k
                java.lang.String r6 = r6.getText()
                if (r6 == 0) goto Lbc
                boolean r6 = kotlin.text.StringsKt.t0(r6)
                if (r6 == 0) goto La9
                goto Lbc
            La9:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35265k
                java.lang.String r6 = r6.getText()
                java.lang.String r3 = "getText(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r3)
                java.lang.CharSequence r6 = kotlin.text.StringsKt.v1(r6)
                r6.toString()
                goto Lc7
            Lbc:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35265k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.H(r6)
                if (r6 == 0) goto Lc7
                kotlin.Unit r6 = kotlin.Unit.f60915a
                return r6
            Lc7:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35265k
                r6.next()
                goto L4a
            Lce:
                kotlin.Unit r6 = kotlin.Unit.f60915a
                return r6
            Ld1:
                org.xmlpull.v1.XmlPullParserException r6 = new org.xmlpull.v1.XmlPullParserException
                java.lang.String r0 = "iterateCurrentTagEvents call is allowed only for START_TAG event"
                r6.<init>(r0)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.F.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseMediaFilesTag")
    /* loaded from: classes6.dex */
    public static final class G extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35267h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35268i;

        /* renamed from: j  reason: collision with root package name */
        public int f35269j;

        public G(rs.c<? super G> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35268i = obj;
            this.f35269j |= Integer.MIN_VALUE;
            return k.m(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parsePricingTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n*L\n1#1,117:1\n312#2,7:118\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class H extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35270h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35271i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35272j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35273k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35274l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public H(XmlPullParser xmlPullParser, rs.c cVar, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2) {
            super(2, cVar);
            this.f35272j = xmlPullParser;
            this.f35273k = objectRef;
            this.f35274l = objectRef2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((H) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            H h10 = new H(this.f35272j, cVar, this.f35273k, this.f35274l);
            h10.f35271i = obj;
            return h10;
        }

        /* JADX WARN: Type inference failed for: r0v21, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.String] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String text;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f35270h == 0) {
                kotlin.f.b(obj);
                kotlinx.coroutines.i.g((g0) this.f35271i);
                if (k.n0(this.f35272j)) {
                    this.f35272j.nextTag();
                }
                if (k.i0(this.f35272j)) {
                    return Unit.f60915a;
                }
                if (k.p0(this.f35272j)) {
                    int depth = this.f35272j.getDepth();
                    while (this.f35272j.getDepth() >= depth) {
                        int depth2 = this.f35272j.getDepth() - depth;
                        if (depth2 != 0) {
                            if (depth2 == 1) {
                                k.p0(this.f35272j);
                            }
                        } else if (k.p0(this.f35272j)) {
                            XmlPullParser xmlPullParser = this.f35272j;
                            this.f35273k.element = k.G(xmlPullParser, "model");
                            this.f35274l.element = k.G(xmlPullParser, "currency");
                        } else if (k.r0(this.f35272j) && (text = this.f35272j.getText()) != null && !StringsKt.t0(text)) {
                            String text2 = this.f35272j.getText();
                            Intrinsics.checkNotNullExpressionValue(text2, "getText(...)");
                            StringsKt.v1(text2).toString();
                        } else if (k.l0(this.f35272j)) {
                            return Unit.f60915a;
                        }
                        this.f35272j.next();
                    }
                    return Unit.f60915a;
                }
                throw new XmlPullParserException("iterateCurrentTagEvents call is allowed only for START_TAG event");
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parsePricingTag")
    /* loaded from: classes6.dex */
    public static final class I extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35275h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35276i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35277j;

        /* renamed from: k  reason: collision with root package name */
        public int f35278k;

        public I(rs.c<? super I> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35277j = obj;
            this.f35278k |= Integer.MIN_VALUE;
            return k.n(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseStaticResourceTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n*L\n1#1,117:1\n773#2,7:118\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class J extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35279h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35280i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35281j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35282k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35283l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public J(XmlPullParser xmlPullParser, rs.c cVar, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2) {
            super(2, cVar);
            this.f35281j = xmlPullParser;
            this.f35282k = objectRef;
            this.f35283l = objectRef2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((J) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            J j10 = new J(this.f35281j, cVar, this.f35282k, this.f35283l);
            j10.f35280i = obj;
            return j10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v20, types: [T, java.lang.String] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String text;
            T t10;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f35279h == 0) {
                kotlin.f.b(obj);
                kotlinx.coroutines.i.g((g0) this.f35280i);
                if (k.n0(this.f35281j)) {
                    this.f35281j.nextTag();
                }
                if (k.i0(this.f35281j)) {
                    return Unit.f60915a;
                }
                if (k.p0(this.f35281j)) {
                    int depth = this.f35281j.getDepth();
                    while (this.f35281j.getDepth() >= depth) {
                        int depth2 = this.f35281j.getDepth() - depth;
                        if (depth2 != 0) {
                            if (depth2 == 1) {
                                k.p0(this.f35281j);
                            }
                        } else if (k.p0(this.f35281j)) {
                            XmlPullParser xmlPullParser = this.f35281j;
                            Ref.ObjectRef objectRef = this.f35282k;
                            String G = k.G(xmlPullParser, "creativeType");
                            if (G != null) {
                                t10 = k.R(G);
                            } else {
                                t10 = 0;
                            }
                            objectRef.element = t10;
                        } else if (k.r0(this.f35281j) && (text = this.f35281j.getText()) != null && !StringsKt.t0(text)) {
                            String text2 = this.f35281j.getText();
                            Intrinsics.checkNotNullExpressionValue(text2, "getText(...)");
                            this.f35283l.element = StringsKt.v1(text2).toString();
                        } else if (k.l0(this.f35281j)) {
                            return Unit.f60915a;
                        }
                        this.f35281j.next();
                    }
                    return Unit.f60915a;
                }
                throw new XmlPullParserException("iterateCurrentTagEvents call is allowed only for START_TAG event");
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseStaticResourceTag")
    /* loaded from: classes6.dex */
    public static final class K extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35284h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35285i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35286j;

        /* renamed from: k  reason: collision with root package name */
        public int f35287k;

        public K(rs.c<? super K> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35286j = obj;
            this.f35287k |= Integer.MIN_VALUE;
            return k.o(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseTagsTextOnly$$inlined$iterateTag$1", f = "VastParser.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n*L\n1#1,117:1\n295#2,6:118\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class L extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35288h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35289i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35290j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35291k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public L(XmlPullParser xmlPullParser, rs.c cVar, Ref.ObjectRef objectRef) {
            super(2, cVar);
            this.f35290j = xmlPullParser;
            this.f35291k = objectRef;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((L) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            L l10 = new L(this.f35290j, cVar, this.f35291k);
            l10.f35289i = obj;
            return l10;
        }

        /* JADX WARN: Type inference failed for: r0v20, types: [T, java.lang.String] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String text;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f35288h == 0) {
                kotlin.f.b(obj);
                kotlinx.coroutines.i.g((g0) this.f35289i);
                if (k.n0(this.f35290j)) {
                    this.f35290j.nextTag();
                }
                if (k.i0(this.f35290j)) {
                    return Unit.f60915a;
                }
                if (k.p0(this.f35290j)) {
                    int depth = this.f35290j.getDepth();
                    while (this.f35290j.getDepth() >= depth) {
                        int depth2 = this.f35290j.getDepth() - depth;
                        if (depth2 != 0) {
                            if (depth2 == 1) {
                                k.p0(this.f35290j);
                            }
                        } else if (k.p0(this.f35290j)) {
                            continue;
                        } else if (k.r0(this.f35290j) && (text = this.f35290j.getText()) != null && !StringsKt.t0(text)) {
                            String text2 = this.f35290j.getText();
                            Intrinsics.checkNotNullExpressionValue(text2, "getText(...)");
                            this.f35291k.element = StringsKt.v1(text2).toString();
                        } else if (k.l0(this.f35290j)) {
                            return Unit.f60915a;
                        }
                        this.f35290j.next();
                    }
                    return Unit.f60915a;
                }
                throw new XmlPullParserException("iterateCurrentTagEvents call is allowed only for START_TAG event");
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseTagsTextOnly")
    /* loaded from: classes6.dex */
    public static final class M extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35292h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35293i;

        /* renamed from: j  reason: collision with root package name */
        public int f35294j;

        public M(rs.c<? super M> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35293i = obj;
            this.f35294j |= Integer.MIN_VALUE;
            return k.p(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseTrackingEventsTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {123}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n562#2,6:118\n569#2:125\n1#3:124\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class N extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35295h;

        /* renamed from: i  reason: collision with root package name */
        public int f35296i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35297j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35298k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ List f35299l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public N(XmlPullParser xmlPullParser, rs.c cVar, List list) {
            super(2, cVar);
            this.f35298k = xmlPullParser;
            this.f35299l = list;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((N) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            N n10 = new N(this.f35298k, cVar, this.f35299l);
            n10.f35297j = obj;
            return n10;
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0052  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0083  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00ce  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x005b -> B:49:0x00c7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0064 -> B:49:0x00c7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0072 -> B:49:0x00c7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x007c -> B:31:0x007f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x008f -> B:49:0x00c7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00a9 -> B:49:0x00c7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00c2 -> B:49:0x00c7). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r5.f35296i
                r2 = 1
                if (r1 == 0) goto L19
                if (r1 != r2) goto L11
                int r1 = r5.f35295h
                kotlin.f.b(r6)
                goto L7f
            L11:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L19:
                kotlin.f.b(r6)
                java.lang.Object r6 = r5.f35297j
                gt.g0 r6 = (gt.g0) r6
                kotlinx.coroutines.i.g(r6)
                org.xmlpull.v1.XmlPullParser r6 = r5.f35298k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.M(r6)
                if (r6 == 0) goto L30
                org.xmlpull.v1.XmlPullParser r6 = r5.f35298k
                r6.nextTag()
            L30:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35298k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.B(r6)
                if (r6 == 0) goto L3b
                kotlin.Unit r6 = kotlin.Unit.f60915a
                return r6
            L3b:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35298k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.Q(r6)
                if (r6 == 0) goto Ld1
                org.xmlpull.v1.XmlPullParser r6 = r5.f35298k
                int r6 = r6.getDepth()
                r1 = r6
            L4a:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35298k
                int r6 = r6.getDepth()
                if (r6 < r1) goto Lce
                org.xmlpull.v1.XmlPullParser r6 = r5.f35298k
                int r6 = r6.getDepth()
                int r6 = r6 - r1
                if (r6 == 0) goto L89
                if (r6 == r2) goto L5e
                goto Lc7
            L5e:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35298k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.Q(r6)
                if (r6 == 0) goto Lc7
                org.xmlpull.v1.XmlPullParser r6 = r5.f35298k
                java.lang.String r3 = r6.getName()
                java.lang.String r4 = "Tracking"
                boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r4)
                if (r3 == 0) goto Lc7
                r5.f35295h = r1
                r5.f35296i = r2
                java.lang.Object r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.B0(r6, r5)
                if (r6 != r0) goto L7f
                return r0
            L7f:
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.y r6 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.y) r6
                if (r6 == 0) goto Lc7
                java.util.List r3 = r5.f35299l
                r3.add(r6)
                goto Lc7
            L89:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35298k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.Q(r6)
                if (r6 == 0) goto L92
                goto Lc7
            L92:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35298k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.V(r6)
                if (r6 == 0) goto Lbc
                org.xmlpull.v1.XmlPullParser r6 = r5.f35298k
                java.lang.String r6 = r6.getText()
                if (r6 == 0) goto Lbc
                boolean r6 = kotlin.text.StringsKt.t0(r6)
                if (r6 == 0) goto La9
                goto Lbc
            La9:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35298k
                java.lang.String r6 = r6.getText()
                java.lang.String r3 = "getText(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r3)
                java.lang.CharSequence r6 = kotlin.text.StringsKt.v1(r6)
                r6.toString()
                goto Lc7
            Lbc:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35298k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.H(r6)
                if (r6 == 0) goto Lc7
                kotlin.Unit r6 = kotlin.Unit.f60915a
                return r6
            Lc7:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35298k
                r6.next()
                goto L4a
            Lce:
                kotlin.Unit r6 = kotlin.Unit.f60915a
                return r6
            Ld1:
                org.xmlpull.v1.XmlPullParserException r6 = new org.xmlpull.v1.XmlPullParserException
                java.lang.String r0 = "iterateCurrentTagEvents call is allowed only for START_TAG event"
                r6.<init>(r0)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.N.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseTrackingEventsTag")
    /* loaded from: classes6.dex */
    public static final class O extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35300h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35301i;

        /* renamed from: j  reason: collision with root package name */
        public int f35302j;

        public O(rs.c<? super O> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35301i = obj;
            this.f35302j |= Integer.MIN_VALUE;
            return k.q(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseTrackingTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n*L\n1#1,117:1\n582#2,8:118\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class P extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35303h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35304i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35305j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35306k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35307l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35308m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public P(XmlPullParser xmlPullParser, rs.c cVar, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, Ref.ObjectRef objectRef3) {
            super(2, cVar);
            this.f35305j = xmlPullParser;
            this.f35306k = objectRef;
            this.f35307l = objectRef2;
            this.f35308m = objectRef3;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((P) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            P p10 = new P(this.f35305j, cVar, this.f35306k, this.f35307l, this.f35308m);
            p10.f35304i = obj;
            return p10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v20, types: [T, java.lang.String] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String text;
            T t10;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f35303h == 0) {
                kotlin.f.b(obj);
                kotlinx.coroutines.i.g((g0) this.f35304i);
                if (k.n0(this.f35305j)) {
                    this.f35305j.nextTag();
                }
                if (k.i0(this.f35305j)) {
                    return Unit.f60915a;
                }
                if (k.p0(this.f35305j)) {
                    int depth = this.f35305j.getDepth();
                    while (this.f35305j.getDepth() >= depth) {
                        int depth2 = this.f35305j.getDepth() - depth;
                        if (depth2 != 0) {
                            if (depth2 == 1) {
                                k.p0(this.f35305j);
                            }
                        } else if (k.p0(this.f35305j)) {
                            XmlPullParser xmlPullParser = this.f35305j;
                            Ref.ObjectRef objectRef = this.f35306k;
                            String G = k.G(xmlPullParser, NotificationCompat.CATEGORY_EVENT);
                            T t11 = 0;
                            if (G != null) {
                                t10 = k.j0(G);
                            } else {
                                t10 = 0;
                            }
                            objectRef.element = t10;
                            Ref.ObjectRef objectRef2 = this.f35307l;
                            String G2 = k.G(xmlPullParser, TypedValues.CycleType.S_WAVE_OFFSET);
                            if (G2 != null) {
                                t11 = k.b0(G2);
                            }
                            objectRef2.element = t11;
                        } else if (k.r0(this.f35305j) && (text = this.f35305j.getText()) != null && !StringsKt.t0(text)) {
                            String text2 = this.f35305j.getText();
                            Intrinsics.checkNotNullExpressionValue(text2, "getText(...)");
                            this.f35308m.element = StringsKt.v1(text2).toString();
                        } else if (k.l0(this.f35305j)) {
                            return Unit.f60915a;
                        }
                        this.f35305j.next();
                    }
                    return Unit.f60915a;
                }
                throw new XmlPullParserException("iterateCurrentTagEvents call is allowed only for START_TAG event");
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseTrackingTag")
    /* loaded from: classes6.dex */
    public static final class Q extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35309h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35310i;

        /* renamed from: j  reason: collision with root package name */
        public Object f35311j;

        /* renamed from: k  reason: collision with root package name */
        public /* synthetic */ Object f35312k;

        /* renamed from: l  reason: collision with root package name */
        public int f35313l;

        public Q(rs.c<? super Q> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35312k = obj;
            this.f35313l |= Integer.MIN_VALUE;
            return k.r(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseVast$2", f = "VastParser.kt", l = {130}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class R extends SuspendLambda implements Function2<g0, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.z>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35314h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35315i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public R(XmlPullParser xmlPullParser, rs.c<? super R> cVar) {
            super(2, cVar);
            this.f35315i = xmlPullParser;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.z> cVar) {
            return ((R) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new R(this.f35315i, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f35314h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                XmlPullParser xmlPullParser = this.f35315i;
                this.f35314h = 1;
                obj = k.t(xmlPullParser, this);
                if (obj == f10) {
                    return f10;
                }
            }
            return obj;
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseVastTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {124, 125}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n142#2,8:118\n151#2:127\n1#3:126\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class S extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35316h;

        /* renamed from: i  reason: collision with root package name */
        public int f35317i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35318j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35319k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35320l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35321m;

        /* renamed from: n  reason: collision with root package name */
        public final /* synthetic */ List f35322n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public S(XmlPullParser xmlPullParser, rs.c cVar, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, List list) {
            super(2, cVar);
            this.f35319k = xmlPullParser;
            this.f35320l = objectRef;
            this.f35321m = objectRef2;
            this.f35322n = list;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((S) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            S s10 = new S(this.f35319k, cVar, this.f35320l, this.f35321m, this.f35322n);
            s10.f35318j = obj;
            return s10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0060  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00af  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x0107  */
        /* JADX WARN: Type inference failed for: r7v35, types: [T, java.lang.String] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0069 -> B:57:0x0100). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0073 -> B:57:0x0100). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0092 -> B:57:0x0100). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x009b -> B:57:0x0100). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00a8 -> B:39:0x00ab). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00bd -> B:57:0x0100). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x00e2 -> B:57:0x0100). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x00fb -> B:57:0x0100). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 274
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.S.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseVastTag")
    /* loaded from: classes6.dex */
    public static final class T extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35323h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35324i;

        /* renamed from: j  reason: collision with root package name */
        public Object f35325j;

        /* renamed from: k  reason: collision with root package name */
        public /* synthetic */ Object f35326k;

        /* renamed from: l  reason: collision with root package name */
        public int f35327l;

        public T(rs.c<? super T> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35326k = obj;
            this.f35327l |= Integer.MIN_VALUE;
            return k.t(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseVideoClickTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n*L\n1#1,117:1\n658#2,7:118\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class U extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35328h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35329i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35330j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35331k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35332l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public U(XmlPullParser xmlPullParser, rs.c cVar, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2) {
            super(2, cVar);
            this.f35330j = xmlPullParser;
            this.f35331k = objectRef;
            this.f35332l = objectRef2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((U) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            U u10 = new U(this.f35330j, cVar, this.f35331k, this.f35332l);
            u10.f35329i = obj;
            return u10;
        }

        /* JADX WARN: Type inference failed for: r0v20, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v22, types: [T, java.lang.String] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String text;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f35328h == 0) {
                kotlin.f.b(obj);
                kotlinx.coroutines.i.g((g0) this.f35329i);
                if (k.n0(this.f35330j)) {
                    this.f35330j.nextTag();
                }
                if (k.i0(this.f35330j)) {
                    return Unit.f60915a;
                }
                if (k.p0(this.f35330j)) {
                    int depth = this.f35330j.getDepth();
                    while (this.f35330j.getDepth() >= depth) {
                        int depth2 = this.f35330j.getDepth() - depth;
                        if (depth2 != 0) {
                            if (depth2 == 1) {
                                k.p0(this.f35330j);
                            }
                        } else if (k.p0(this.f35330j)) {
                            this.f35331k.element = k.G(this.f35330j, "id");
                        } else if (k.r0(this.f35330j) && (text = this.f35330j.getText()) != null && !StringsKt.t0(text)) {
                            String text2 = this.f35330j.getText();
                            Intrinsics.checkNotNullExpressionValue(text2, "getText(...)");
                            this.f35332l.element = StringsKt.v1(text2).toString();
                        } else if (k.l0(this.f35330j)) {
                            return Unit.f60915a;
                        }
                        this.f35330j.next();
                    }
                    return Unit.f60915a;
                }
                throw new XmlPullParserException("iterateCurrentTagEvents call is allowed only for START_TAG event");
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseVideoClickTag")
    /* loaded from: classes6.dex */
    public static final class V extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35333h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35334i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35335j;

        /* renamed from: k  reason: collision with root package name */
        public int f35336k;

        public V(rs.c<? super V> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35335j = obj;
            this.f35336k |= Integer.MIN_VALUE;
            return k.u(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseVideoClicksTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {123, 124, 126}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n629#2,7:118\n636#2,3:126\n1#3:125\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class W extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35337h;

        /* renamed from: i  reason: collision with root package name */
        public int f35338i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35339j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35340k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35341l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ List f35342m;

        /* renamed from: n  reason: collision with root package name */
        public final /* synthetic */ List f35343n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public W(XmlPullParser xmlPullParser, rs.c cVar, Ref.ObjectRef objectRef, List list, List list2) {
            super(2, cVar);
            this.f35340k = xmlPullParser;
            this.f35341l = objectRef;
            this.f35342m = list;
            this.f35343n = list2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((W) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            W w10 = new W(this.f35340k, cVar, this.f35341l, this.f35342m, this.f35343n);
            w10.f35339j = obj;
            return w10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:24:0x006b  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00b9  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x00db  */
        /* JADX WARN: Removed duplicated region for block: B:80:0x0141  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0074 -> B:79:0x013a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x007e -> B:79:0x013a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x0086 -> B:79:0x013a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x009a -> B:79:0x013a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00a4 -> B:79:0x013a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00b7 -> B:79:0x013a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00b9 -> B:79:0x013a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00c6 -> B:79:0x013a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x00d4 -> B:54:0x00d7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x00e7 -> B:79:0x013a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x00f9 -> B:79:0x013a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x0102 -> B:79:0x013a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:74:0x011c -> B:79:0x013a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:76:0x0135 -> B:79:0x013a). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            /*
                Method dump skipped, instructions count: 332
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.W.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseVideoClicksTag")
    /* loaded from: classes6.dex */
    public static final class X extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public boolean f35344h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35345i;

        /* renamed from: j  reason: collision with root package name */
        public Object f35346j;

        /* renamed from: k  reason: collision with root package name */
        public Object f35347k;

        /* renamed from: l  reason: collision with root package name */
        public /* synthetic */ Object f35348l;

        /* renamed from: m  reason: collision with root package name */
        public int f35349m;

        public X(rs.c<? super X> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35348l = obj;
            this.f35349m |= Integer.MIN_VALUE;
            return k.h0(null, false, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseWrapperTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {126, 127, 128, 129, 130}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n237#2,2:118\n239#2,14:121\n1#3:120\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class Y extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35350h;

        /* renamed from: i  reason: collision with root package name */
        public int f35351i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35352j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35353k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35354l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35355m;

        /* renamed from: n  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35356n;

        /* renamed from: o  reason: collision with root package name */
        public final /* synthetic */ List f35357o;

        /* renamed from: p  reason: collision with root package name */
        public final /* synthetic */ List f35358p;

        /* renamed from: q  reason: collision with root package name */
        public final /* synthetic */ List f35359q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Y(XmlPullParser xmlPullParser, rs.c cVar, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, Ref.ObjectRef objectRef3, List list, List list2, List list3) {
            super(2, cVar);
            this.f35353k = xmlPullParser;
            this.f35354l = objectRef;
            this.f35355m = objectRef2;
            this.f35356n = objectRef3;
            this.f35357o = list;
            this.f35358p = list2;
            this.f35359q = list3;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((Y) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            Y y10 = new Y(this.f35353k, cVar, this.f35354l, this.f35355m, this.f35356n, this.f35357o, this.f35358p, this.f35359q);
            y10.f35352j = obj;
            return y10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0083  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00c5  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x00e7  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x01a2  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x008d -> B:96:0x019b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0097 -> B:96:0x019b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x009f -> B:96:0x019b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00a5 -> B:96:0x019b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00b0 -> B:96:0x019b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00c3 -> B:96:0x019b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00c5 -> B:96:0x019b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00d2 -> B:96:0x019b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x00e5 -> B:96:0x019b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x00e7 -> B:96:0x019b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x00f4 -> B:96:0x019b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x0107 -> B:96:0x019b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x0111 -> B:96:0x019b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x0124 -> B:96:0x019b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:72:0x012e -> B:96:0x019b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:75:0x013c -> B:77:0x013f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:83:0x0163 -> B:96:0x019b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:91:0x017d -> B:96:0x019b). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:93:0x0196 -> B:96:0x019b). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                Method dump skipped, instructions count: 452
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.Y.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseWrapperTag")
    /* loaded from: classes6.dex */
    public static final class Z extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35360h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35361i;

        /* renamed from: j  reason: collision with root package name */
        public Object f35362j;

        /* renamed from: k  reason: collision with root package name */
        public Object f35363k;

        /* renamed from: l  reason: collision with root package name */
        public Object f35364l;

        /* renamed from: m  reason: collision with root package name */
        public Object f35365m;

        /* renamed from: n  reason: collision with root package name */
        public /* synthetic */ Object f35366n;

        /* renamed from: o  reason: collision with root package name */
        public int f35367o;

        public Z(rs.c<? super Z> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35366n = obj;
            this.f35367o |= Integer.MIN_VALUE;
            return k.v(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseAdParametersTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n471#2:118\n472#2,6:120\n1#3:119\n*E\n"})
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$b  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3282b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35368h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35369i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35370j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35371k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35372l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3282b(XmlPullParser xmlPullParser, rs.c cVar, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2) {
            super(2, cVar);
            this.f35370j = xmlPullParser;
            this.f35371k = objectRef;
            this.f35372l = objectRef2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((C3282b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            C3282b c3282b = new C3282b(this.f35370j, cVar, this.f35371k, this.f35372l);
            c3282b.f35369i = obj;
            return c3282b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v20, types: [T, java.lang.String] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String text;
            T t10;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f35368h == 0) {
                kotlin.f.b(obj);
                kotlinx.coroutines.i.g((g0) this.f35369i);
                if (k.n0(this.f35370j)) {
                    this.f35370j.nextTag();
                }
                if (k.i0(this.f35370j)) {
                    return Unit.f60915a;
                }
                if (k.p0(this.f35370j)) {
                    int depth = this.f35370j.getDepth();
                    while (this.f35370j.getDepth() >= depth) {
                        int depth2 = this.f35370j.getDepth() - depth;
                        if (depth2 != 0) {
                            if (depth2 == 1) {
                                k.p0(this.f35370j);
                            }
                        } else if (k.p0(this.f35370j)) {
                            XmlPullParser xmlPullParser = this.f35370j;
                            Ref.ObjectRef objectRef = this.f35371k;
                            String G = k.G(xmlPullParser, "xmlEncoded");
                            if (G != null) {
                                t10 = kotlin.coroutines.jvm.internal.a.a(Boolean.parseBoolean(G));
                            } else {
                                t10 = 0;
                            }
                            objectRef.element = t10;
                        } else if (k.r0(this.f35370j) && (text = this.f35370j.getText()) != null && !StringsKt.t0(text)) {
                            String text2 = this.f35370j.getText();
                            Intrinsics.checkNotNullExpressionValue(text2, "getText(...)");
                            this.f35372l.element = StringsKt.v1(text2).toString();
                        } else if (k.l0(this.f35370j)) {
                            return Unit.f60915a;
                        }
                        this.f35370j.next();
                    }
                    return Unit.f60915a;
                }
                throw new XmlPullParserException("iterateCurrentTagEvents call is allowed only for START_TAG event");
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseAdParametersTag")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$c  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3283c extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35373h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35374i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35375j;

        /* renamed from: k  reason: collision with root package name */
        public int f35376k;

        public C3283c(rs.c<? super C3283c> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35375j = obj;
            this.f35376k |= Integer.MIN_VALUE;
            return k.G0(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseAdSystemTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n*L\n1#1,117:1\n276#2,7:118\n*E\n"})
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$d  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3284d extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35377h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35378i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35379j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35380k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35381l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3284d(XmlPullParser xmlPullParser, rs.c cVar, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2) {
            super(2, cVar);
            this.f35379j = xmlPullParser;
            this.f35380k = objectRef;
            this.f35381l = objectRef2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((C3284d) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            C3284d c3284d = new C3284d(this.f35379j, cVar, this.f35380k, this.f35381l);
            c3284d.f35378i = obj;
            return c3284d;
        }

        /* JADX WARN: Type inference failed for: r0v20, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v22, types: [T, java.lang.String] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String text;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f35377h == 0) {
                kotlin.f.b(obj);
                kotlinx.coroutines.i.g((g0) this.f35378i);
                if (k.n0(this.f35379j)) {
                    this.f35379j.nextTag();
                }
                if (k.i0(this.f35379j)) {
                    return Unit.f60915a;
                }
                if (k.p0(this.f35379j)) {
                    int depth = this.f35379j.getDepth();
                    while (this.f35379j.getDepth() >= depth) {
                        int depth2 = this.f35379j.getDepth() - depth;
                        if (depth2 != 0) {
                            if (depth2 == 1) {
                                k.p0(this.f35379j);
                            }
                        } else if (k.p0(this.f35379j)) {
                            this.f35380k.element = k.G(this.f35379j, "version");
                        } else if (k.r0(this.f35379j) && (text = this.f35379j.getText()) != null && !StringsKt.t0(text)) {
                            String text2 = this.f35379j.getText();
                            Intrinsics.checkNotNullExpressionValue(text2, "getText(...)");
                            this.f35381l.element = StringsKt.v1(text2).toString();
                        } else if (k.l0(this.f35379j)) {
                            return Unit.f60915a;
                        }
                        this.f35379j.next();
                    }
                    return Unit.f60915a;
                }
                throw new XmlPullParserException("iterateCurrentTagEvents call is allowed only for START_TAG event");
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseAdSystemTag")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$e  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3285e extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35382h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35383i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35384j;

        /* renamed from: k  reason: collision with root package name */
        public int f35385k;

        public C3285e(rs.c<? super C3285e> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35384j = obj;
            this.f35385k |= Integer.MIN_VALUE;
            return k.H0(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseAdTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {126, 127}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n165#2,10:118\n175#2,4:129\n1#3:128\n*E\n"})
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$f  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3286f extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35386h;

        /* renamed from: i  reason: collision with root package name */
        public int f35387i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35388j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35389k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35390l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35391m;

        /* renamed from: n  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35392n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3286f(XmlPullParser xmlPullParser, rs.c cVar, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, Ref.ObjectRef objectRef3) {
            super(2, cVar);
            this.f35389k = xmlPullParser;
            this.f35390l = objectRef;
            this.f35391m = objectRef2;
            this.f35392n = objectRef3;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((C3286f) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            C3286f c3286f = new C3286f(this.f35389k, cVar, this.f35390l, this.f35391m, this.f35392n);
            c3286f.f35388j = obj;
            return c3286f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0065  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00bc  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x011f  */
        /* JADX WARN: Type inference failed for: r6v3, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r9v36, types: [T, java.lang.Integer] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x006e -> B:61:0x0118). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0078 -> B:61:0x0118). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0080 -> B:61:0x0118). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x009b -> B:45:0x00c3). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00b5 -> B:41:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00c2 -> B:45:0x00c3). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x00ce -> B:61:0x0118). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x00fa -> B:61:0x0118). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x0113 -> B:61:0x0118). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                Method dump skipped, instructions count: 298
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3286f.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseAdTag")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$g  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3287g extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35393h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35394i;

        /* renamed from: j  reason: collision with root package name */
        public Object f35395j;

        /* renamed from: k  reason: collision with root package name */
        public /* synthetic */ Object f35396k;

        /* renamed from: l  reason: collision with root package name */
        public int f35397l;

        public C3287g(rs.c<? super C3287g> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35396k = obj;
            this.f35397l |= Integer.MIN_VALUE;
            return k.a(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseCompanionAdsTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {123}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n809#2,6:118\n816#2:125\n1#3:124\n*E\n"})
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$h  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3288h extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35398h;

        /* renamed from: i  reason: collision with root package name */
        public int f35399i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35400j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35401k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ List f35402l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3288h(XmlPullParser xmlPullParser, rs.c cVar, List list) {
            super(2, cVar);
            this.f35401k = xmlPullParser;
            this.f35402l = list;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((C3288h) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            C3288h c3288h = new C3288h(this.f35401k, cVar, this.f35402l);
            c3288h.f35400j = obj;
            return c3288h;
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0052  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0083  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00ce  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x005b -> B:49:0x00c7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0064 -> B:49:0x00c7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0072 -> B:49:0x00c7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x007c -> B:31:0x007f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x008f -> B:49:0x00c7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00a9 -> B:49:0x00c7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00c2 -> B:49:0x00c7). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r5.f35399i
                r2 = 1
                if (r1 == 0) goto L19
                if (r1 != r2) goto L11
                int r1 = r5.f35398h
                kotlin.f.b(r6)
                goto L7f
            L11:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L19:
                kotlin.f.b(r6)
                java.lang.Object r6 = r5.f35400j
                gt.g0 r6 = (gt.g0) r6
                kotlinx.coroutines.i.g(r6)
                org.xmlpull.v1.XmlPullParser r6 = r5.f35401k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.M(r6)
                if (r6 == 0) goto L30
                org.xmlpull.v1.XmlPullParser r6 = r5.f35401k
                r6.nextTag()
            L30:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35401k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.B(r6)
                if (r6 == 0) goto L3b
                kotlin.Unit r6 = kotlin.Unit.f60915a
                return r6
            L3b:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35401k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.Q(r6)
                if (r6 == 0) goto Ld1
                org.xmlpull.v1.XmlPullParser r6 = r5.f35401k
                int r6 = r6.getDepth()
                r1 = r6
            L4a:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35401k
                int r6 = r6.getDepth()
                if (r6 < r1) goto Lce
                org.xmlpull.v1.XmlPullParser r6 = r5.f35401k
                int r6 = r6.getDepth()
                int r6 = r6 - r1
                if (r6 == 0) goto L89
                if (r6 == r2) goto L5e
                goto Lc7
            L5e:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35401k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.Q(r6)
                if (r6 == 0) goto Lc7
                org.xmlpull.v1.XmlPullParser r6 = r5.f35401k
                java.lang.String r3 = r6.getName()
                java.lang.String r4 = "Companion"
                boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r4)
                if (r3 == 0) goto Lc7
                r5.f35398h = r1
                r5.f35399i = r2
                java.lang.Object r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.S(r6, r5)
                if (r6 != r0) goto L7f
                return r0
            L7f:
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g r6 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g) r6
                if (r6 == 0) goto Lc7
                java.util.List r3 = r5.f35402l
                r3.add(r6)
                goto Lc7
            L89:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35401k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.Q(r6)
                if (r6 == 0) goto L92
                goto Lc7
            L92:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35401k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.V(r6)
                if (r6 == 0) goto Lbc
                org.xmlpull.v1.XmlPullParser r6 = r5.f35401k
                java.lang.String r6 = r6.getText()
                if (r6 == 0) goto Lbc
                boolean r6 = kotlin.text.StringsKt.t0(r6)
                if (r6 == 0) goto La9
                goto Lbc
            La9:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35401k
                java.lang.String r6 = r6.getText()
                java.lang.String r3 = "getText(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r3)
                java.lang.CharSequence r6 = kotlin.text.StringsKt.v1(r6)
                r6.toString()
                goto Lc7
            Lbc:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35401k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.H(r6)
                if (r6 == 0) goto Lc7
                kotlin.Unit r6 = kotlin.Unit.f60915a
                return r6
            Lc7:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35401k
                r6.next()
                goto L4a
            Lce:
                kotlin.Unit r6 = kotlin.Unit.f60915a
                return r6
            Ld1:
                org.xmlpull.v1.XmlPullParserException r6 = new org.xmlpull.v1.XmlPullParserException
                java.lang.String r0 = "iterateCurrentTagEvents call is allowed only for START_TAG event"
                r6.<init>(r0)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3288h.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseCompanionAdsTag")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$i  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3289i extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35403h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35404i;

        /* renamed from: j  reason: collision with root package name */
        public int f35405j;

        public C3289i(rs.c<? super C3289i> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35404i = obj;
            this.f35405j |= Integer.MIN_VALUE;
            return k.b(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseCompanionTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {128, 130, 133, 136, 137, 141, 146, 147}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,117:1\n840#2,11:118\n853#2,13:130\n869#2,8:146\n1#3:129\n774#4:143\n865#4,2:144\n*S KotlinDebug\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n*L\n865#1:143\n865#1:144,2\n*E\n"})
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$j  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3290j extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35406h;

        /* renamed from: i  reason: collision with root package name */
        public int f35407i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35408j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35409k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35410l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35411m;

        /* renamed from: n  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35412n;

        /* renamed from: o  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35413o;

        /* renamed from: p  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35414p;

        /* renamed from: q  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35415q;

        /* renamed from: r  reason: collision with root package name */
        public final /* synthetic */ List f35416r;

        /* renamed from: s  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35417s;

        /* renamed from: t  reason: collision with root package name */
        public final /* synthetic */ List f35418t;

        /* renamed from: u  reason: collision with root package name */
        public final /* synthetic */ List f35419u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3290j(XmlPullParser xmlPullParser, rs.c cVar, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, Ref.ObjectRef objectRef3, Ref.ObjectRef objectRef4, Ref.ObjectRef objectRef5, Ref.ObjectRef objectRef6, List list, Ref.ObjectRef objectRef7, List list2, List list3) {
            super(2, cVar);
            this.f35409k = xmlPullParser;
            this.f35410l = objectRef;
            this.f35411m = objectRef2;
            this.f35412n = objectRef3;
            this.f35413o = objectRef4;
            this.f35414p = objectRef5;
            this.f35415q = objectRef6;
            this.f35416r = list;
            this.f35417s = objectRef7;
            this.f35418t = list2;
            this.f35419u = list3;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((C3290j) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            C3290j c3290j = new C3290j(this.f35409k, cVar, this.f35410l, this.f35411m, this.f35412n, this.f35413o, this.f35414p, this.f35415q, this.f35416r, this.f35417s, this.f35418t, this.f35419u);
            c3290j.f35408j = obj;
            return c3290j;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:100:0x01c8  */
        /* JADX WARN: Removed duplicated region for block: B:131:0x0270  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0092  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x00d6  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x00ff  */
        /* JADX WARN: Removed duplicated region for block: B:71:0x013f  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0176  */
        /* JADX WARN: Type inference failed for: r4v3, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r8v46, types: [T, java.lang.String] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:100:0x01c8 -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:102:0x01da -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:107:0x01ee -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:117:0x0227 -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:125:0x024b -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:127:0x0264 -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009d -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a7 -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00af -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b5 -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00c0 -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00d4 -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00d6 -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x00e8 -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x00f8 -> B:53:0x00fb). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x010c -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x0120 -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x012a -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:70:0x013d -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x013f -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:73:0x0151 -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:84:0x0189 -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:86:0x0194 -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:91:0x01a8 -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:93:0x01b2 -> B:130:0x0269). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:0x01c6 -> B:130:0x0269). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                Method dump skipped, instructions count: 692
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3290j.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseCompanionTag")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$k  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0558k extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35420h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35421i;

        /* renamed from: j  reason: collision with root package name */
        public Object f35422j;

        /* renamed from: k  reason: collision with root package name */
        public Object f35423k;

        /* renamed from: l  reason: collision with root package name */
        public Object f35424l;

        /* renamed from: m  reason: collision with root package name */
        public Object f35425m;

        /* renamed from: n  reason: collision with root package name */
        public Object f35426n;

        /* renamed from: o  reason: collision with root package name */
        public Object f35427o;

        /* renamed from: p  reason: collision with root package name */
        public Object f35428p;

        /* renamed from: q  reason: collision with root package name */
        public Object f35429q;

        /* renamed from: r  reason: collision with root package name */
        public /* synthetic */ Object f35430r;

        /* renamed from: s  reason: collision with root package name */
        public int f35431s;

        public C0558k(rs.c<? super C0558k> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35430r = obj;
            this.f35431s |= Integer.MIN_VALUE;
            return k.c(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseCreativeTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {129, 133}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n369#2,13:118\n383#2,9:132\n1#3:131\n*E\n"})
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$l  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3291l extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35432h;

        /* renamed from: i  reason: collision with root package name */
        public int f35433i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35434j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35435k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35436l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35437m;

        /* renamed from: n  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35438n;

        /* renamed from: o  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35439o;

        /* renamed from: p  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35440p;

        /* renamed from: q  reason: collision with root package name */
        public final /* synthetic */ boolean f35441q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3291l(XmlPullParser xmlPullParser, rs.c cVar, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, Ref.ObjectRef objectRef3, Ref.ObjectRef objectRef4, Ref.ObjectRef objectRef5, boolean z10) {
            super(2, cVar);
            this.f35435k = xmlPullParser;
            this.f35436l = objectRef;
            this.f35437m = objectRef2;
            this.f35438n = objectRef3;
            this.f35439o = objectRef4;
            this.f35440p = objectRef5;
            this.f35441q = z10;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((C3291l) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            C3291l c3291l = new C3291l(this.f35435k, cVar, this.f35436l, this.f35437m, this.f35438n, this.f35439o, this.f35440p, this.f35441q);
            c3291l.f35434j = obj;
            return c3291l;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0066  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00a2  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x00c7  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00cc  */
        /* JADX WARN: Removed duplicated region for block: B:68:0x0143  */
        /* JADX WARN: Type inference failed for: r6v3, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r6v4, types: [T, java.lang.Integer] */
        /* JADX WARN: Type inference failed for: r6v6, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r9v36, types: [T, java.lang.String] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x006f -> B:67:0x013c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0079 -> B:67:0x013c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0081 -> B:67:0x013c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00a2 -> B:51:0x00d3). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00ba -> B:43:0x00bd). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x00d2 -> B:51:0x00d3). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x00de -> B:67:0x013c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x011e -> B:67:0x013c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x0137 -> B:67:0x013c). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) {
            /*
                Method dump skipped, instructions count: 334
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3291l.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseCreativeTag")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$m  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3292m extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35442h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35443i;

        /* renamed from: j  reason: collision with root package name */
        public Object f35444j;

        /* renamed from: k  reason: collision with root package name */
        public Object f35445k;

        /* renamed from: l  reason: collision with root package name */
        public Object f35446l;

        /* renamed from: m  reason: collision with root package name */
        public /* synthetic */ Object f35447m;

        /* renamed from: n  reason: collision with root package name */
        public int f35448n;

        public C3292m(rs.c<? super C3292m> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35447m = obj;
            this.f35448n |= Integer.MIN_VALUE;
            return k.T(null, false, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseCreativesTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {123}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n347#2,6:118\n354#2:125\n1#3:124\n*E\n"})
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$n  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3293n extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35449h;

        /* renamed from: i  reason: collision with root package name */
        public int f35450i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35451j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35452k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ boolean f35453l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ List f35454m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3293n(XmlPullParser xmlPullParser, rs.c cVar, boolean z10, List list) {
            super(2, cVar);
            this.f35452k = xmlPullParser;
            this.f35453l = z10;
            this.f35454m = list;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((C3293n) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            C3293n c3293n = new C3293n(this.f35452k, cVar, this.f35453l, this.f35454m);
            c3293n.f35451j = obj;
            return c3293n;
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0053  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0086  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00d1  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x005c -> B:49:0x00ca). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0065 -> B:49:0x00ca). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0073 -> B:49:0x00ca). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x007f -> B:31:0x0082). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x0092 -> B:49:0x00ca). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00ac -> B:49:0x00ca). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00c5 -> B:49:0x00ca). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r5.f35450i
                r2 = 1
                if (r1 == 0) goto L1a
                if (r1 != r2) goto L12
                int r1 = r5.f35449h
                kotlin.f.b(r6)
                goto L82
            L12:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L1a:
                kotlin.f.b(r6)
                java.lang.Object r6 = r5.f35451j
                gt.g0 r6 = (gt.g0) r6
                kotlinx.coroutines.i.g(r6)
                org.xmlpull.v1.XmlPullParser r6 = r5.f35452k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.M(r6)
                if (r6 == 0) goto L31
                org.xmlpull.v1.XmlPullParser r6 = r5.f35452k
                r6.nextTag()
            L31:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35452k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.B(r6)
                if (r6 == 0) goto L3c
                kotlin.Unit r6 = kotlin.Unit.f60915a
                return r6
            L3c:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35452k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.Q(r6)
                if (r6 == 0) goto Ld4
                org.xmlpull.v1.XmlPullParser r6 = r5.f35452k
                int r6 = r6.getDepth()
                r1 = r6
            L4b:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35452k
                int r6 = r6.getDepth()
                if (r6 < r1) goto Ld1
                org.xmlpull.v1.XmlPullParser r6 = r5.f35452k
                int r6 = r6.getDepth()
                int r6 = r6 - r1
                if (r6 == 0) goto L8c
                if (r6 == r2) goto L5f
                goto Lca
            L5f:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35452k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.Q(r6)
                if (r6 == 0) goto Lca
                org.xmlpull.v1.XmlPullParser r6 = r5.f35452k
                java.lang.String r3 = r6.getName()
                java.lang.String r4 = "Creative"
                boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r4)
                if (r3 == 0) goto Lca
                boolean r3 = r5.f35453l
                r5.f35449h = r1
                r5.f35450i = r2
                java.lang.Object r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.z(r6, r3, r5)
                if (r6 != r0) goto L82
                return r0
            L82:
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.j r6 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.j) r6
                if (r6 == 0) goto Lca
                java.util.List r3 = r5.f35454m
                r3.add(r6)
                goto Lca
            L8c:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35452k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.Q(r6)
                if (r6 == 0) goto L95
                goto Lca
            L95:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35452k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.V(r6)
                if (r6 == 0) goto Lbf
                org.xmlpull.v1.XmlPullParser r6 = r5.f35452k
                java.lang.String r6 = r6.getText()
                if (r6 == 0) goto Lbf
                boolean r6 = kotlin.text.StringsKt.t0(r6)
                if (r6 == 0) goto Lac
                goto Lbf
            Lac:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35452k
                java.lang.String r6 = r6.getText()
                java.lang.String r3 = "getText(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r3)
                java.lang.CharSequence r6 = kotlin.text.StringsKt.v1(r6)
                r6.toString()
                goto Lca
            Lbf:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35452k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.H(r6)
                if (r6 == 0) goto Lca
                kotlin.Unit r6 = kotlin.Unit.f60915a
                return r6
            Lca:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35452k
                r6.next()
                goto L4b
            Ld1:
                kotlin.Unit r6 = kotlin.Unit.f60915a
                return r6
            Ld4:
                org.xmlpull.v1.XmlPullParserException r6 = new org.xmlpull.v1.XmlPullParserException
                java.lang.String r0 = "iterateCurrentTagEvents call is allowed only for START_TAG event"
                r6.<init>(r0)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3293n.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseCreativesTag")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$o  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3294o extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35455h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35456i;

        /* renamed from: j  reason: collision with root package name */
        public int f35457j;

        public C3294o(rs.c<? super C3294o> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35456i = obj;
            this.f35457j |= Integer.MIN_VALUE;
            return k.Z(null, false, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {799}, m = "parseHtmlResourceTag")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$p  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3295p extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public /* synthetic */ Object f35458h;

        /* renamed from: i  reason: collision with root package name */
        public int f35459i;

        public C3295p(rs.c<? super C3295p> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35458h = obj;
            this.f35459i |= Integer.MIN_VALUE;
            return k.e(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {802}, m = "parseIFrameResourceTag")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$q  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3296q extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public /* synthetic */ Object f35460h;

        /* renamed from: i  reason: collision with root package name */
        public int f35461i;

        public C3296q(rs.c<? super C3296q> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35460h = obj;
            this.f35461i |= Integer.MIN_VALUE;
            return k.f(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseIconClicksTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {123, 124}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n748#2,7:118\n756#2:126\n1#3:125\n*E\n"})
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$r  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3297r extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35462h;

        /* renamed from: i  reason: collision with root package name */
        public int f35463i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35464j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35465k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35466l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ List f35467m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3297r(XmlPullParser xmlPullParser, rs.c cVar, Ref.ObjectRef objectRef, List list) {
            super(2, cVar);
            this.f35465k = xmlPullParser;
            this.f35466l = objectRef;
            this.f35467m = list;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((C3297r) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            C3297r c3297r = new C3297r(this.f35465k, cVar, this.f35466l, this.f35467m);
            c3297r.f35464j = obj;
            return c3297r;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0060  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00af  */
        /* JADX WARN: Removed duplicated region for block: B:58:0x00fa  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0069 -> B:57:0x00f3). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0073 -> B:57:0x00f3). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0092 -> B:57:0x00f3). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x009b -> B:57:0x00f3). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00a8 -> B:39:0x00ab). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00bb -> B:57:0x00f3). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x00d5 -> B:57:0x00f3). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x00ee -> B:57:0x00f3). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 261
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3297r.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseIconClicksTag")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$s  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3298s extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35468h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35469i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35470j;

        /* renamed from: k  reason: collision with root package name */
        public int f35471k;

        public C3298s(rs.c<? super C3298s> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35470j = obj;
            this.f35471k |= Integer.MIN_VALUE;
            return k.g(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseIconTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {130, 132, 133, 139, 140}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n701#2,13:118\n714#2,11:132\n1#3:131\n*E\n"})
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$t  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3299t extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35472h;

        /* renamed from: i  reason: collision with root package name */
        public int f35473i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35474j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35475k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35476l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35477m;

        /* renamed from: n  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35478n;

        /* renamed from: o  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35479o;

        /* renamed from: p  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35480p;

        /* renamed from: q  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35481q;

        /* renamed from: r  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35482r;

        /* renamed from: s  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35483s;

        /* renamed from: t  reason: collision with root package name */
        public final /* synthetic */ List f35484t;

        /* renamed from: u  reason: collision with root package name */
        public Object f35485u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3299t(XmlPullParser xmlPullParser, rs.c cVar, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, Ref.ObjectRef objectRef3, Ref.ObjectRef objectRef4, Ref.ObjectRef objectRef5, Ref.ObjectRef objectRef6, Ref.ObjectRef objectRef7, Ref.ObjectRef objectRef8, List list) {
            super(2, cVar);
            this.f35475k = xmlPullParser;
            this.f35476l = objectRef;
            this.f35477m = objectRef2;
            this.f35478n = objectRef3;
            this.f35479o = objectRef4;
            this.f35480p = objectRef5;
            this.f35481q = objectRef6;
            this.f35482r = objectRef7;
            this.f35483s = objectRef8;
            this.f35484t = list;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((C3299t) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            C3299t c3299t = new C3299t(this.f35475k, cVar, this.f35476l, this.f35477m, this.f35478n, this.f35479o, this.f35480p, this.f35481q, this.f35482r, this.f35483s, this.f35484t);
            c3299t.f35474j = obj;
            return c3299t;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:119:0x021e  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0098  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00eb  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x010c  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x012e  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x0143  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x0158  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x0173  */
        /* JADX WARN: Type inference failed for: r9v17, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r9v7, types: [T, java.lang.String] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:105:0x01df -> B:118:0x0217). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:113:0x01f9 -> B:118:0x0217). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:115:0x0212 -> B:118:0x0217). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a1 -> B:118:0x0217). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ab -> B:118:0x0217). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:78:0x0154 -> B:118:0x0217). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:80:0x015e -> B:118:0x0217). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:82:0x016c -> B:84:0x016f). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r13) {
            /*
                Method dump skipped, instructions count: 553
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3299t.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseIconTag")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$u  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3300u extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35486h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35487i;

        /* renamed from: j  reason: collision with root package name */
        public Object f35488j;

        /* renamed from: k  reason: collision with root package name */
        public Object f35489k;

        /* renamed from: l  reason: collision with root package name */
        public Object f35490l;

        /* renamed from: m  reason: collision with root package name */
        public Object f35491m;

        /* renamed from: n  reason: collision with root package name */
        public Object f35492n;

        /* renamed from: o  reason: collision with root package name */
        public Object f35493o;

        /* renamed from: p  reason: collision with root package name */
        public Object f35494p;

        /* renamed from: q  reason: collision with root package name */
        public /* synthetic */ Object f35495q;

        /* renamed from: r  reason: collision with root package name */
        public int f35496r;

        public C3300u(rs.c<? super C3300u> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35495q = obj;
            this.f35496r |= Integer.MIN_VALUE;
            return k.h(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseIconsTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {123}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n675#2,6:118\n682#2:125\n1#3:124\n*E\n"})
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$v  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3301v extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35497h;

        /* renamed from: i  reason: collision with root package name */
        public int f35498i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35499j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35500k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ List f35501l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3301v(XmlPullParser xmlPullParser, rs.c cVar, List list) {
            super(2, cVar);
            this.f35500k = xmlPullParser;
            this.f35501l = list;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((C3301v) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            C3301v c3301v = new C3301v(this.f35500k, cVar, this.f35501l);
            c3301v.f35499j = obj;
            return c3301v;
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0052  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0083  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00ce  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x005b -> B:49:0x00c7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0064 -> B:49:0x00c7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0072 -> B:49:0x00c7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x007c -> B:31:0x007f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x008f -> B:49:0x00c7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00a9 -> B:49:0x00c7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00c2 -> B:49:0x00c7). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.f()
                int r1 = r5.f35498i
                r2 = 1
                if (r1 == 0) goto L19
                if (r1 != r2) goto L11
                int r1 = r5.f35497h
                kotlin.f.b(r6)
                goto L7f
            L11:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L19:
                kotlin.f.b(r6)
                java.lang.Object r6 = r5.f35499j
                gt.g0 r6 = (gt.g0) r6
                kotlinx.coroutines.i.g(r6)
                org.xmlpull.v1.XmlPullParser r6 = r5.f35500k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.M(r6)
                if (r6 == 0) goto L30
                org.xmlpull.v1.XmlPullParser r6 = r5.f35500k
                r6.nextTag()
            L30:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35500k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.B(r6)
                if (r6 == 0) goto L3b
                kotlin.Unit r6 = kotlin.Unit.f60915a
                return r6
            L3b:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35500k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.Q(r6)
                if (r6 == 0) goto Ld1
                org.xmlpull.v1.XmlPullParser r6 = r5.f35500k
                int r6 = r6.getDepth()
                r1 = r6
            L4a:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35500k
                int r6 = r6.getDepth()
                if (r6 < r1) goto Lce
                org.xmlpull.v1.XmlPullParser r6 = r5.f35500k
                int r6 = r6.getDepth()
                int r6 = r6 - r1
                if (r6 == 0) goto L89
                if (r6 == r2) goto L5e
                goto Lc7
            L5e:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35500k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.Q(r6)
                if (r6 == 0) goto Lc7
                org.xmlpull.v1.XmlPullParser r6 = r5.f35500k
                java.lang.String r3 = r6.getName()
                java.lang.String r4 = "Icon"
                boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r4)
                if (r3 == 0) goto Lc7
                r5.f35497h = r1
                r5.f35498i = r2
                java.lang.Object r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.m0(r6, r5)
                if (r6 != r0) goto L7f
                return r0
            L7f:
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.n r6 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.n) r6
                if (r6 == 0) goto Lc7
                java.util.List r3 = r5.f35501l
                r3.add(r6)
                goto Lc7
            L89:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35500k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.Q(r6)
                if (r6 == 0) goto L92
                goto Lc7
            L92:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35500k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.V(r6)
                if (r6 == 0) goto Lbc
                org.xmlpull.v1.XmlPullParser r6 = r5.f35500k
                java.lang.String r6 = r6.getText()
                if (r6 == 0) goto Lbc
                boolean r6 = kotlin.text.StringsKt.t0(r6)
                if (r6 == 0) goto La9
                goto Lbc
            La9:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35500k
                java.lang.String r6 = r6.getText()
                java.lang.String r3 = "getText(...)"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r3)
                java.lang.CharSequence r6 = kotlin.text.StringsKt.v1(r6)
                r6.toString()
                goto Lc7
            Lbc:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35500k
                boolean r6 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.H(r6)
                if (r6 == 0) goto Lc7
                kotlin.Unit r6 = kotlin.Unit.f60915a
                return r6
            Lc7:
                org.xmlpull.v1.XmlPullParser r6 = r5.f35500k
                r6.next()
                goto L4a
            Lce:
                kotlin.Unit r6 = kotlin.Unit.f60915a
                return r6
            Ld1:
                org.xmlpull.v1.XmlPullParserException r6 = new org.xmlpull.v1.XmlPullParserException
                java.lang.String r0 = "iterateCurrentTagEvents call is allowed only for START_TAG event"
                r6.<init>(r0)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3301v.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseIconsTag")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$w  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3302w extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35502h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35503i;

        /* renamed from: j  reason: collision with root package name */
        public int f35504j;

        public C3302w(rs.c<? super C3302w> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35503i = obj;
            this.f35504j |= Integer.MIN_VALUE;
            return k.i(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseImpressionTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n*L\n1#1,117:1\n330#2,7:118\n*E\n"})
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$x  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3303x extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35505h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f35506i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35507j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35508k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35509l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3303x(XmlPullParser xmlPullParser, rs.c cVar, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2) {
            super(2, cVar);
            this.f35507j = xmlPullParser;
            this.f35508k = objectRef;
            this.f35509l = objectRef2;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((C3303x) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            C3303x c3303x = new C3303x(this.f35507j, cVar, this.f35508k, this.f35509l);
            c3303x.f35506i = obj;
            return c3303x;
        }

        /* JADX WARN: Type inference failed for: r0v20, types: [T, java.lang.String] */
        /* JADX WARN: Type inference failed for: r0v22, types: [T, java.lang.String] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String text;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f35505h == 0) {
                kotlin.f.b(obj);
                kotlinx.coroutines.i.g((g0) this.f35506i);
                if (k.n0(this.f35507j)) {
                    this.f35507j.nextTag();
                }
                if (k.i0(this.f35507j)) {
                    return Unit.f60915a;
                }
                if (k.p0(this.f35507j)) {
                    int depth = this.f35507j.getDepth();
                    while (this.f35507j.getDepth() >= depth) {
                        int depth2 = this.f35507j.getDepth() - depth;
                        if (depth2 != 0) {
                            if (depth2 == 1) {
                                k.p0(this.f35507j);
                            }
                        } else if (k.p0(this.f35507j)) {
                            this.f35508k.element = k.G(this.f35507j, "id");
                        } else if (k.r0(this.f35507j) && (text = this.f35507j.getText()) != null && !StringsKt.t0(text)) {
                            String text2 = this.f35507j.getText();
                            Intrinsics.checkNotNullExpressionValue(text2, "getText(...)");
                            this.f35509l.element = StringsKt.v1(text2).toString();
                        } else if (k.l0(this.f35507j)) {
                            return Unit.f60915a;
                        }
                        this.f35507j.next();
                    }
                    return Unit.f60915a;
                }
                throw new XmlPullParserException("iterateCurrentTagEvents call is allowed only for START_TAG event");
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt", f = "VastParser.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_AVPH_PARAMS}, m = "parseImpressionTag")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$y  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3304y extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f35510h;

        /* renamed from: i  reason: collision with root package name */
        public Object f35511i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35512j;

        /* renamed from: k  reason: collision with root package name */
        public int f35513k;

        public C3304y(rs.c<? super C3304y> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f35512j = obj;
            this.f35513k |= Integer.MIN_VALUE;
            return k.j(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseInLineTag$$inlined$iterateTag$1", f = "VastParser.kt", l = {123, 124, 125, 126, 127, 128, 130, 131}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n196#2,11:118\n207#2,6:130\n1#3:129\n*E\n"})
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$z  reason: case insensitive filesystem */
    /* loaded from: classes6.dex */
    public static final class C3305z extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f35514h;

        /* renamed from: i  reason: collision with root package name */
        public int f35515i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f35516j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ XmlPullParser f35517k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35518l;

        /* renamed from: m  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35519m;

        /* renamed from: n  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35520n;

        /* renamed from: o  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35521o;

        /* renamed from: p  reason: collision with root package name */
        public final /* synthetic */ Ref.ObjectRef f35522p;

        /* renamed from: q  reason: collision with root package name */
        public final /* synthetic */ List f35523q;

        /* renamed from: r  reason: collision with root package name */
        public final /* synthetic */ List f35524r;

        /* renamed from: s  reason: collision with root package name */
        public final /* synthetic */ List f35525s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3305z(XmlPullParser xmlPullParser, rs.c cVar, Ref.ObjectRef objectRef, Ref.ObjectRef objectRef2, Ref.ObjectRef objectRef3, Ref.ObjectRef objectRef4, Ref.ObjectRef objectRef5, List list, List list2, List list3) {
            super(2, cVar);
            this.f35517k = xmlPullParser;
            this.f35518l = objectRef;
            this.f35519m = objectRef2;
            this.f35520n = objectRef3;
            this.f35521o = objectRef4;
            this.f35522p = objectRef5;
            this.f35523q = list;
            this.f35524r = list2;
            this.f35525s = list3;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((C3305z) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            C3305z c3305z = new C3305z(this.f35517k, cVar, this.f35518l, this.f35519m, this.f35520n, this.f35521o, this.f35522p, this.f35523q, this.f35524r, this.f35525s);
            c3305z.f35516j = obj;
            return c3305z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:115:0x01fe  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0096  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x00da  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0157  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:100:0x01bf -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:109:0x01d9 -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:111:0x01f2 -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00a0 -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00aa -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b2 -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00c4 -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00d8 -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00da -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x00e7 -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x00fb -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0105 -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x0119 -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x0123 -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:67:0x0137 -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:69:0x0141 -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:75:0x0155 -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:76:0x0157 -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:78:0x0164 -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:83:0x0178 -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:85:0x0182 -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:91:0x0196 -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:93:0x019f -> B:114:0x01f7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:96:0x01ae -> B:98:0x01b1). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 578
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3305z.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @NotNull
    public static final v C() {
        return I();
    }

    public static final String G(XmlPullParser xmlPullParser, String str) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue == null || StringsKt.t0(attributeValue)) {
            return null;
        }
        return attributeValue;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object G0(org.xmlpull.v1.XmlPullParser r6, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.e> r7) {
        /*
            boolean r0 = r7 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3283c
            if (r0 == 0) goto L13
            r0 = r7
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$c r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3283c) r0
            int r1 = r0.f35376k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f35376k = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$c r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$c
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f35375j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f35376k
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 != r4) goto L32
            java.lang.Object r6 = r0.f35374i
            kotlin.jvm.internal.Ref$ObjectRef r6 = (kotlin.jvm.internal.Ref.ObjectRef) r6
            java.lang.Object r0 = r0.f35373h
            kotlin.jvm.internal.Ref$ObjectRef r0 = (kotlin.jvm.internal.Ref.ObjectRef) r0
            kotlin.f.b(r7)
            goto L5b
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3a:
            kotlin.f.b(r7)
            kotlin.jvm.internal.Ref$ObjectRef r7 = new kotlin.jvm.internal.Ref$ObjectRef
            r7.<init>()
            kotlin.jvm.internal.Ref$ObjectRef r2 = new kotlin.jvm.internal.Ref$ObjectRef
            r2.<init>()
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$b r5 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$b
            r5.<init>(r6, r3, r2, r7)
            r0.f35373h = r7
            r0.f35374i = r2
            r0.f35376k = r4
            java.lang.Object r6 = kotlinx.coroutines.i.f(r5, r0)
            if (r6 != r1) goto L59
            return r1
        L59:
            r0 = r7
            r6 = r2
        L5b:
            T r7 = r0.element
            java.lang.String r7 = (java.lang.String) r7
            if (r7 == 0) goto L6a
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.e r3 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.e
            T r6 = r6.element
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            r3.<init>(r7, r6)
        L6a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.G0(org.xmlpull.v1.XmlPullParser, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object H0(org.xmlpull.v1.XmlPullParser r6, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.f> r7) {
        /*
            boolean r0 = r7 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3285e
            if (r0 == 0) goto L13
            r0 = r7
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$e r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3285e) r0
            int r1 = r0.f35385k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f35385k = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$e r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$e
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f35384j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f35385k
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 != r4) goto L32
            java.lang.Object r6 = r0.f35383i
            kotlin.jvm.internal.Ref$ObjectRef r6 = (kotlin.jvm.internal.Ref.ObjectRef) r6
            java.lang.Object r0 = r0.f35382h
            kotlin.jvm.internal.Ref$ObjectRef r0 = (kotlin.jvm.internal.Ref.ObjectRef) r0
            kotlin.f.b(r7)
            goto L5b
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3a:
            kotlin.f.b(r7)
            kotlin.jvm.internal.Ref$ObjectRef r7 = new kotlin.jvm.internal.Ref$ObjectRef
            r7.<init>()
            kotlin.jvm.internal.Ref$ObjectRef r2 = new kotlin.jvm.internal.Ref$ObjectRef
            r2.<init>()
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$d r5 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$d
            r5.<init>(r6, r3, r2, r7)
            r0.f35382h = r7
            r0.f35383i = r2
            r0.f35385k = r4
            java.lang.Object r6 = kotlinx.coroutines.i.f(r5, r0)
            if (r6 != r1) goto L59
            return r1
        L59:
            r0 = r7
            r6 = r2
        L5b:
            T r7 = r0.element
            if (r7 != 0) goto L64
            T r7 = r6.element
            if (r7 != 0) goto L64
            goto L71
        L64:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.f r3 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.f
            T r7 = r0.element
            java.lang.String r7 = (java.lang.String) r7
            T r6 = r6.element
            java.lang.String r6 = (java.lang.String) r6
            r3.<init>(r7, r6)
        L71:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.H0(org.xmlpull.v1.XmlPullParser, rs.c):java.lang.Object");
    }

    public static final j I() {
        return (j) f35199a.getValue();
    }

    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.i R(String str) {
        if (StringsKt.T(str, "image/", true)) {
            return com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.i.f35581a;
        }
        if (StringsKt.Z(str, "javascript", true)) {
            return com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.i.f35582b;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b3 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object T(org.xmlpull.v1.XmlPullParser r17, boolean r18, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.j> r19) {
        /*
            r0 = r19
            boolean r1 = r0 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3292m
            if (r1 == 0) goto L15
            r1 = r0
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$m r1 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3292m) r1
            int r2 = r1.f35448n
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.f35448n = r2
            goto L1a
        L15:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$m r1 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$m
            r1.<init>(r0)
        L1a:
            java.lang.Object r0 = r1.f35447m
            java.lang.Object r2 = kotlin.coroutines.intrinsics.a.f()
            int r3 = r1.f35448n
            r4 = 1
            if (r3 == 0) goto L47
            if (r3 != r4) goto L3f
            java.lang.Object r2 = r1.f35446l
            kotlin.jvm.internal.Ref$ObjectRef r2 = (kotlin.jvm.internal.Ref.ObjectRef) r2
            java.lang.Object r3 = r1.f35445k
            kotlin.jvm.internal.Ref$ObjectRef r3 = (kotlin.jvm.internal.Ref.ObjectRef) r3
            java.lang.Object r4 = r1.f35444j
            kotlin.jvm.internal.Ref$ObjectRef r4 = (kotlin.jvm.internal.Ref.ObjectRef) r4
            java.lang.Object r5 = r1.f35443i
            kotlin.jvm.internal.Ref$ObjectRef r5 = (kotlin.jvm.internal.Ref.ObjectRef) r5
            java.lang.Object r1 = r1.f35442h
            kotlin.jvm.internal.Ref$ObjectRef r1 = (kotlin.jvm.internal.Ref.ObjectRef) r1
            kotlin.f.b(r0)
            goto L91
        L3f:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L47:
            kotlin.f.b(r0)
            kotlin.jvm.internal.Ref$ObjectRef r0 = new kotlin.jvm.internal.Ref$ObjectRef
            r0.<init>()
            kotlin.jvm.internal.Ref$ObjectRef r3 = new kotlin.jvm.internal.Ref$ObjectRef
            r3.<init>()
            kotlin.jvm.internal.Ref$ObjectRef r14 = new kotlin.jvm.internal.Ref$ObjectRef
            r14.<init>()
            kotlin.jvm.internal.Ref$ObjectRef r15 = new kotlin.jvm.internal.Ref$ObjectRef
            r15.<init>()
            kotlin.jvm.internal.Ref$ObjectRef r13 = new kotlin.jvm.internal.Ref$ObjectRef
            r13.<init>()
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$l r12 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$l
            r7 = 0
            r5 = r12
            r6 = r17
            r8 = r0
            r9 = r3
            r10 = r14
            r11 = r15
            r16 = r12
            r12 = r13
            r4 = r13
            r13 = r18
            r5.<init>(r6, r7, r8, r9, r10, r11, r12, r13)
            r1.f35442h = r0
            r1.f35443i = r3
            r1.f35444j = r14
            r1.f35445k = r15
            r1.f35446l = r4
            r5 = 1
            r1.f35448n = r5
            r5 = r16
            java.lang.Object r1 = kotlinx.coroutines.i.f(r5, r1)
            if (r1 != r2) goto L8c
            return r2
        L8c:
            r1 = r0
            r5 = r3
            r2 = r4
            r4 = r14
            r3 = r15
        L91:
            T r0 = r2.element
            r11 = r0
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.k r11 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.k) r11
            if (r11 == 0) goto Lb3
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.j r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.j
            T r1 = r1.element
            r7 = r1
            java.lang.String r7 = (java.lang.String) r7
            T r1 = r5.element
            r8 = r1
            java.lang.Integer r8 = (java.lang.Integer) r8
            T r1 = r4.element
            r9 = r1
            java.lang.String r9 = (java.lang.String) r9
            T r1 = r3.element
            r10 = r1
            java.lang.String r10 = (java.lang.String) r10
            r6 = r0
            r6.<init>(r7, r8, r9, r10, r11)
            goto Lb4
        Lb3:
            r0 = 0
        Lb4:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.T(org.xmlpull.v1.XmlPullParser, boolean, rs.c):java.lang.Object");
    }

    public static final SimpleDateFormat U() {
        return com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.r.b("HH:mm:ss.SSS");
    }

    public static final Long X(String str) {
        Object d10;
        Object d11;
        Long l10;
        Long l11;
        Long l12 = null;
        try {
            Result.a aVar = Result.f60901b;
            Date parse = U().parse(str);
            if (parse != null) {
                l11 = Long.valueOf(parse.getTime());
            } else {
                l11 = null;
            }
            d10 = Result.d(l11);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(kotlin.f.a(th2));
        }
        if (Result.i(d10)) {
            d10 = null;
        }
        Long l13 = (Long) d10;
        if (l13 == null) {
            try {
                Date parse2 = a0().parse(str);
                if (parse2 != null) {
                    l10 = Long.valueOf(parse2.getTime());
                } else {
                    l10 = null;
                }
                d11 = Result.d(l10);
            } catch (Throwable th3) {
                Result.a aVar3 = Result.f60901b;
                d11 = Result.d(kotlin.f.a(th3));
            }
            if (!Result.i(d11)) {
                l12 = d11;
            }
            return l12;
        }
        return l13;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object Z(org.xmlpull.v1.XmlPullParser r5, boolean r6, rs.c<? super java.util.List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.j>> r7) {
        /*
            boolean r0 = r7 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3294o
            if (r0 == 0) goto L13
            r0 = r7
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$o r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3294o) r0
            int r1 = r0.f35457j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f35457j = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$o r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$o
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f35456i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f35457j
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f35455h
            java.util.List r5 = (java.util.List) r5
            kotlin.f.b(r7)
            goto L4f
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.f.b(r7)
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$n r2 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$n
            r4 = 0
            r2.<init>(r5, r4, r6, r7)
            r0.f35455h = r7
            r0.f35457j = r3
            java.lang.Object r5 = kotlinx.coroutines.i.f(r2, r0)
            if (r5 != r1) goto L4e
            return r1
        L4e:
            r5 = r7
        L4f:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.Z(org.xmlpull.v1.XmlPullParser, boolean, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0080 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object a(org.xmlpull.v1.XmlPullParser r12, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.c> r13) {
        /*
            boolean r0 = r13 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3287g
            if (r0 == 0) goto L13
            r0 = r13
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$g r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3287g) r0
            int r1 = r0.f35397l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f35397l = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$g r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$g
            r0.<init>(r13)
        L18:
            java.lang.Object r13 = r0.f35396k
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f35397l
            r3 = 1
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r12 = r0.f35395j
            kotlin.jvm.internal.Ref$ObjectRef r12 = (kotlin.jvm.internal.Ref.ObjectRef) r12
            java.lang.Object r1 = r0.f35394i
            kotlin.jvm.internal.Ref$ObjectRef r1 = (kotlin.jvm.internal.Ref.ObjectRef) r1
            java.lang.Object r0 = r0.f35393h
            kotlin.jvm.internal.Ref$ObjectRef r0 = (kotlin.jvm.internal.Ref.ObjectRef) r0
            kotlin.f.b(r13)
            goto L6c
        L35:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L3d:
            kotlin.f.b(r13)
            kotlin.jvm.internal.Ref$ObjectRef r13 = new kotlin.jvm.internal.Ref$ObjectRef
            r13.<init>()
            kotlin.jvm.internal.Ref$ObjectRef r2 = new kotlin.jvm.internal.Ref$ObjectRef
            r2.<init>()
            kotlin.jvm.internal.Ref$ObjectRef r10 = new kotlin.jvm.internal.Ref$ObjectRef
            r10.<init>()
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$f r11 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$f
            r6 = 0
            r4 = r11
            r5 = r12
            r7 = r13
            r8 = r2
            r9 = r10
            r4.<init>(r5, r6, r7, r8, r9)
            r0.f35393h = r13
            r0.f35394i = r2
            r0.f35395j = r10
            r0.f35397l = r3
            java.lang.Object r12 = kotlinx.coroutines.i.f(r11, r0)
            if (r12 != r1) goto L69
            return r1
        L69:
            r0 = r13
            r1 = r2
            r12 = r10
        L6c:
            T r12 = r12.element
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.d r12 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.d) r12
            if (r12 == 0) goto L80
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.c r13 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.c
            T r0 = r0.element
            java.lang.String r0 = (java.lang.String) r0
            T r1 = r1.element
            java.lang.Integer r1 = (java.lang.Integer) r1
            r13.<init>(r0, r1, r12)
            goto L81
        L80:
            r13 = 0
        L81:
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.a(org.xmlpull.v1.XmlPullParser, rs.c):java.lang.Object");
    }

    public static final SimpleDateFormat a0() {
        return com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.r.b("HH:mm:ss");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object b(org.xmlpull.v1.XmlPullParser r5, rs.c<? super java.util.List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g>> r6) {
        /*
            boolean r0 = r6 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3289i
            if (r0 == 0) goto L13
            r0 = r6
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$i r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3289i) r0
            int r1 = r0.f35405j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f35405j = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$i r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$i
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f35404i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f35405j
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f35403h
            java.util.List r5 = (java.util.List) r5
            kotlin.f.b(r6)
            goto L4f
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.f.b(r6)
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$h r2 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$h
            r4 = 0
            r2.<init>(r5, r4, r6)
            r0.f35403h = r6
            r0.f35405j = r3
            java.lang.Object r5 = kotlinx.coroutines.i.f(r2, r0)
            if (r5 != r1) goto L4e
            return r1
        L4e:
            r5 = r6
        L4f:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.b(org.xmlpull.v1.XmlPullParser, rs.c):java.lang.Object");
    }

    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t b0(String str) {
        Long X2 = X(str);
        if (X2 != null) {
            return new t.b(X2.longValue());
        }
        Integer f02 = f0(str);
        if (f02 != null) {
            return new t.a(f02.intValue());
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(org.xmlpull.v1.XmlPullParser r25, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.g> r26) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.c(org.xmlpull.v1.XmlPullParser, rs.c):java.lang.Object");
    }

    public static final Object d(XmlPullParser xmlPullParser, rs.c<? super String> cVar) {
        return p(xmlPullParser, cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0047 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object e(org.xmlpull.v1.XmlPullParser r4, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.l> r5) {
        /*
            boolean r0 = r5 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3295p
            if (r0 == 0) goto L13
            r0 = r5
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$p r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3295p) r0
            int r1 = r0.f35459i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f35459i = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$p r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$p
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f35458h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f35459i
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r5)
            goto L3d
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.f.b(r5)
            r0.f35459i = r3
            java.lang.Object r5 = p(r4, r0)
            if (r5 != r1) goto L3d
            return r1
        L3d:
            java.lang.String r5 = (java.lang.String) r5
            if (r5 == 0) goto L47
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.l r4 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.l
            r4.<init>(r5)
            goto L48
        L47:
            r4 = 0
        L48:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.e(org.xmlpull.v1.XmlPullParser, rs.c):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0057  */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object e0(org.xmlpull.v1.XmlPullParser r19, boolean r20, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.r> r21) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.e0(org.xmlpull.v1.XmlPullParser, boolean, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0047 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object f(org.xmlpull.v1.XmlPullParser r4, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.m> r5) {
        /*
            boolean r0 = r5 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3296q
            if (r0 == 0) goto L13
            r0 = r5
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$q r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3296q) r0
            int r1 = r0.f35461i
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f35461i = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$q r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$q
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f35460h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f35461i
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r5)
            goto L3d
        L29:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L31:
            kotlin.f.b(r5)
            r0.f35461i = r3
            java.lang.Object r5 = p(r4, r0)
            if (r5 != r1) goto L3d
            return r1
        L3d:
            java.lang.String r5 = (java.lang.String) r5
            if (r5 == 0) goto L47
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.m r4 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.m
            r4.<init>(r5)
            goto L48
        L47:
            r4 = 0
        L48:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.f(org.xmlpull.v1.XmlPullParser, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Integer f0(java.lang.String r3) {
        /*
            r0 = 0
            kotlin.Result$a r1 = kotlin.Result.f60901b     // Catch: java.lang.Throwable -> L1f
            java.text.NumberFormat r1 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.f35200b     // Catch: java.lang.Throwable -> L1f
            java.lang.Number r3 = r1.parse(r3)     // Catch: java.lang.Throwable -> L1f
            if (r3 == 0) goto L21
            float r3 = r3.floatValue()     // Catch: java.lang.Throwable -> L1f
            r1 = 100
            float r1 = (float) r1     // Catch: java.lang.Throwable -> L1f
            float r3 = r3 * r1
            int r3 = (int) r3     // Catch: java.lang.Throwable -> L1f
            java.lang.Integer r1 = java.lang.Integer.valueOf(r3)     // Catch: java.lang.Throwable -> L1f
            if (r3 < 0) goto L21
            r2 = 101(0x65, float:1.42E-43)
            if (r3 >= r2) goto L21
            goto L22
        L1f:
            r3 = move-exception
            goto L27
        L21:
            r1 = r0
        L22:
            java.lang.Object r3 = kotlin.Result.d(r1)     // Catch: java.lang.Throwable -> L1f
            goto L31
        L27:
            kotlin.Result$a r1 = kotlin.Result.f60901b
            java.lang.Object r3 = kotlin.f.a(r3)
            java.lang.Object r3 = kotlin.Result.d(r3)
        L31:
            boolean r1 = kotlin.Result.i(r3)
            if (r1 == 0) goto L38
            goto L39
        L38:
            r0 = r3
        L39:
            java.lang.Integer r0 = (java.lang.Integer) r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.f0(java.lang.String):java.lang.Integer");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object g(org.xmlpull.v1.XmlPullParser r6, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.o> r7) {
        /*
            boolean r0 = r7 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3298s
            if (r0 == 0) goto L13
            r0 = r7
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$s r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3298s) r0
            int r1 = r0.f35471k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f35471k = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$s r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$s
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f35470j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f35471k
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 != r4) goto L32
            java.lang.Object r6 = r0.f35469i
            java.util.List r6 = (java.util.List) r6
            java.lang.Object r0 = r0.f35468h
            kotlin.jvm.internal.Ref$ObjectRef r0 = (kotlin.jvm.internal.Ref.ObjectRef) r0
            kotlin.f.b(r7)
            goto L5b
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3a:
            kotlin.f.b(r7)
            kotlin.jvm.internal.Ref$ObjectRef r7 = new kotlin.jvm.internal.Ref$ObjectRef
            r7.<init>()
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$r r5 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$r
            r5.<init>(r6, r3, r7, r2)
            r0.f35468h = r7
            r0.f35469i = r2
            r0.f35471k = r4
            java.lang.Object r6 = kotlinx.coroutines.i.f(r5, r0)
            if (r6 != r1) goto L59
            return r1
        L59:
            r0 = r7
            r6 = r2
        L5b:
            T r7 = r0.element
            java.lang.String r7 = (java.lang.String) r7
            if (r7 == 0) goto L66
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.o r3 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.o
            r3.<init>(r7, r6)
        L66:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.g(org.xmlpull.v1.XmlPullParser, rs.c):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x011c A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object h(org.xmlpull.v1.XmlPullParser r24, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.n> r25) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.h(org.xmlpull.v1.XmlPullParser, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object h0(org.xmlpull.v1.XmlPullParser r12, boolean r13, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a> r14) {
        /*
            boolean r0 = r14 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.X
            if (r0 == 0) goto L13
            r0 = r14
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$X r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.X) r0
            int r1 = r0.f35349m
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f35349m = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$X r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$X
            r0.<init>(r14)
        L18:
            java.lang.Object r14 = r0.f35348l
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f35349m
            r3 = 1
            if (r2 == 0) goto L3f
            if (r2 != r3) goto L37
            boolean r13 = r0.f35344h
            java.lang.Object r12 = r0.f35347k
            java.util.List r12 = (java.util.List) r12
            java.lang.Object r1 = r0.f35346j
            java.util.List r1 = (java.util.List) r1
            java.lang.Object r0 = r0.f35345i
            kotlin.jvm.internal.Ref$ObjectRef r0 = (kotlin.jvm.internal.Ref.ObjectRef) r0
            kotlin.f.b(r14)
            goto L70
        L37:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L3f:
            kotlin.f.b(r14)
            kotlin.jvm.internal.Ref$ObjectRef r14 = new kotlin.jvm.internal.Ref$ObjectRef
            r14.<init>()
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.ArrayList r10 = new java.util.ArrayList
            r10.<init>()
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$W r11 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$W
            r6 = 0
            r4 = r11
            r5 = r12
            r7 = r14
            r8 = r2
            r9 = r10
            r4.<init>(r5, r6, r7, r8, r9)
            r0.f35345i = r14
            r0.f35346j = r2
            r0.f35347k = r10
            r0.f35344h = r13
            r0.f35349m = r3
            java.lang.Object r12 = kotlinx.coroutines.i.f(r11, r0)
            if (r12 != r1) goto L6d
            return r1
        L6d:
            r0 = r14
            r1 = r2
            r12 = r10
        L70:
            if (r13 == 0) goto L78
            T r13 = r0.element
            if (r13 != 0) goto L78
            r12 = 0
            goto L82
        L78:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a r13 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.a
            T r14 = r0.element
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.b0 r14 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.b0) r14
            r13.<init>(r14, r1, r12)
            r12 = r13
        L82:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.h0(org.xmlpull.v1.XmlPullParser, boolean, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object i(org.xmlpull.v1.XmlPullParser r5, rs.c<? super java.util.List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.n>> r6) {
        /*
            boolean r0 = r6 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3302w
            if (r0 == 0) goto L13
            r0 = r6
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$w r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3302w) r0
            int r1 = r0.f35504j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f35504j = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$w r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$w
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f35503i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f35504j
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f35502h
            java.util.List r5 = (java.util.List) r5
            kotlin.f.b(r6)
            goto L4f
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.f.b(r6)
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$v r2 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$v
            r4 = 0
            r2.<init>(r5, r4, r6)
            r0.f35502h = r6
            r0.f35504j = r3
            java.lang.Object r5 = kotlinx.coroutines.i.f(r2, r0)
            if (r5 != r1) goto L4e
            return r1
        L4e:
            r5 = r6
        L4f:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.i(org.xmlpull.v1.XmlPullParser, rs.c):java.lang.Object");
    }

    public static final boolean i0(XmlPullParser xmlPullParser) {
        if (xmlPullParser.getEventType() == 1) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object j(org.xmlpull.v1.XmlPullParser r6, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.p> r7) {
        /*
            boolean r0 = r7 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3304y
            if (r0 == 0) goto L13
            r0 = r7
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$y r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.C3304y) r0
            int r1 = r0.f35513k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f35513k = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$y r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$y
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f35512j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f35513k
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 != r4) goto L32
            java.lang.Object r6 = r0.f35511i
            kotlin.jvm.internal.Ref$ObjectRef r6 = (kotlin.jvm.internal.Ref.ObjectRef) r6
            java.lang.Object r0 = r0.f35510h
            kotlin.jvm.internal.Ref$ObjectRef r0 = (kotlin.jvm.internal.Ref.ObjectRef) r0
            kotlin.f.b(r7)
            goto L5b
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3a:
            kotlin.f.b(r7)
            kotlin.jvm.internal.Ref$ObjectRef r7 = new kotlin.jvm.internal.Ref$ObjectRef
            r7.<init>()
            kotlin.jvm.internal.Ref$ObjectRef r2 = new kotlin.jvm.internal.Ref$ObjectRef
            r2.<init>()
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$x r5 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$x
            r5.<init>(r6, r3, r7, r2)
            r0.f35510h = r7
            r0.f35511i = r2
            r0.f35513k = r4
            java.lang.Object r6 = kotlinx.coroutines.i.f(r5, r0)
            if (r6 != r1) goto L59
            return r1
        L59:
            r0 = r7
            r6 = r2
        L5b:
            T r6 = r6.element
            java.lang.String r6 = (java.lang.String) r6
            if (r6 == 0) goto L6a
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.p r3 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.p
            T r7 = r0.element
            java.lang.String r7 = (java.lang.String) r7
            r3.<init>(r7, r6)
        L6a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.j(org.xmlpull.v1.XmlPullParser, rs.c):java.lang.Object");
    }

    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v j0(String str) {
        switch (str.hashCode()) {
            case -1638835128:
                if (str.equals(CampaignEx.JSON_NATIVE_VIDEO_MIDPOINT)) {
                    return com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35641d;
                }
                break;
            case -1337830390:
                if (str.equals("thirdQuartile")) {
                    return com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35642e;
                }
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    return com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35651n;
                }
                break;
            case -934426579:
                if (str.equals(CampaignEx.JSON_NATIVE_VIDEO_RESUME)) {
                    return com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35648k;
                }
                break;
            case -934318917:
                if (str.equals("rewind")) {
                    return com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35647j;
                }
                break;
            case -840405966:
                if (str.equals(CampaignEx.JSON_NATIVE_VIDEO_UNMUTE)) {
                    return com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35645h;
                }
                break;
            case -599445191:
                if (str.equals(CampaignEx.JSON_NATIVE_VIDEO_COMPLETE)) {
                    return com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35643f;
                }
                break;
            case -37683395:
                if (str.equals("closeLinear")) {
                    return com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35649l;
                }
                break;
            case 3363353:
                if (str.equals("mute")) {
                    return com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35644g;
                }
                break;
            case 3532159:
                if (str.equals("skip")) {
                    return com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35650m;
                }
                break;
            case 106440182:
                if (str.equals(CampaignEx.JSON_NATIVE_VIDEO_PAUSE)) {
                    return com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35646i;
                }
                break;
            case 109757538:
                if (str.equals("start")) {
                    return com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35639b;
                }
                break;
            case 560220243:
                if (str.equals("firstQuartile")) {
                    return com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35640c;
                }
                break;
            case 1778167540:
                if (str.equals("creativeView")) {
                    return com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35638a;
                }
                break;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0057  */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object k(org.xmlpull.v1.XmlPullParser r20, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.q> r21) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.k(org.xmlpull.v1.XmlPullParser, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object l(org.xmlpull.v1.XmlPullParser r31, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.s> r32) {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.l(org.xmlpull.v1.XmlPullParser, rs.c):java.lang.Object");
    }

    public static final boolean l0(XmlPullParser xmlPullParser) {
        if (xmlPullParser.getEventType() == 3) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m(org.xmlpull.v1.XmlPullParser r5, rs.c<? super java.util.List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.s>> r6) {
        /*
            boolean r0 = r6 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.G
            if (r0 == 0) goto L13
            r0 = r6
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$G r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.G) r0
            int r1 = r0.f35269j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f35269j = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$G r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$G
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f35268i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f35269j
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f35267h
            java.util.List r5 = (java.util.List) r5
            kotlin.f.b(r6)
            goto L4f
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.f.b(r6)
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$F r2 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$F
            r4 = 0
            r2.<init>(r5, r4, r6)
            r0.f35267h = r6
            r0.f35269j = r3
            java.lang.Object r5 = kotlinx.coroutines.i.f(r2, r0)
            if (r5 != r1) goto L4e
            return r1
        L4e:
            r5 = r6
        L4f:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.m(org.xmlpull.v1.XmlPullParser, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object n(org.xmlpull.v1.XmlPullParser r6, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.u> r7) {
        /*
            boolean r0 = r7 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.I
            if (r0 == 0) goto L13
            r0 = r7
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$I r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.I) r0
            int r1 = r0.f35278k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f35278k = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$I r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$I
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f35277j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f35278k
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 != r4) goto L32
            java.lang.Object r6 = r0.f35276i
            kotlin.jvm.internal.Ref$ObjectRef r6 = (kotlin.jvm.internal.Ref.ObjectRef) r6
            java.lang.Object r0 = r0.f35275h
            kotlin.jvm.internal.Ref$ObjectRef r0 = (kotlin.jvm.internal.Ref.ObjectRef) r0
            kotlin.f.b(r7)
            goto L5b
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3a:
            kotlin.f.b(r7)
            kotlin.jvm.internal.Ref$ObjectRef r7 = new kotlin.jvm.internal.Ref$ObjectRef
            r7.<init>()
            kotlin.jvm.internal.Ref$ObjectRef r2 = new kotlin.jvm.internal.Ref$ObjectRef
            r2.<init>()
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$H r5 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$H
            r5.<init>(r6, r3, r7, r2)
            r0.f35275h = r7
            r0.f35276i = r2
            r0.f35278k = r4
            java.lang.Object r6 = kotlinx.coroutines.i.f(r5, r0)
            if (r6 != r1) goto L59
            return r1
        L59:
            r0 = r7
            r6 = r2
        L5b:
            T r7 = r0.element
            if (r7 != 0) goto L64
            T r7 = r6.element
            if (r7 != 0) goto L64
            goto L71
        L64:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.u r3 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.u
            T r7 = r0.element
            java.lang.String r7 = (java.lang.String) r7
            T r6 = r6.element
            java.lang.String r6 = (java.lang.String) r6
            r3.<init>(r7, r6)
        L71:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.n(org.xmlpull.v1.XmlPullParser, rs.c):java.lang.Object");
    }

    public static final boolean n0(XmlPullParser xmlPullParser) {
        if (xmlPullParser.getEventType() == 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object o(org.xmlpull.v1.XmlPullParser r6, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.w> r7) {
        /*
            boolean r0 = r7 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.K
            if (r0 == 0) goto L13
            r0 = r7
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$K r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.K) r0
            int r1 = r0.f35287k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f35287k = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$K r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$K
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f35286j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f35287k
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 != r4) goto L32
            java.lang.Object r6 = r0.f35285i
            kotlin.jvm.internal.Ref$ObjectRef r6 = (kotlin.jvm.internal.Ref.ObjectRef) r6
            java.lang.Object r0 = r0.f35284h
            kotlin.jvm.internal.Ref$ObjectRef r0 = (kotlin.jvm.internal.Ref.ObjectRef) r0
            kotlin.f.b(r7)
            goto L5b
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3a:
            kotlin.f.b(r7)
            kotlin.jvm.internal.Ref$ObjectRef r7 = new kotlin.jvm.internal.Ref$ObjectRef
            r7.<init>()
            kotlin.jvm.internal.Ref$ObjectRef r2 = new kotlin.jvm.internal.Ref$ObjectRef
            r2.<init>()
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$J r5 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$J
            r5.<init>(r6, r3, r2, r7)
            r0.f35284h = r7
            r0.f35285i = r2
            r0.f35287k = r4
            java.lang.Object r6 = kotlinx.coroutines.i.f(r5, r0)
            if (r6 != r1) goto L59
            return r1
        L59:
            r0 = r7
            r6 = r2
        L5b:
            T r7 = r0.element
            if (r7 == 0) goto L77
            T r7 = r6.element
            if (r7 != 0) goto L64
            goto L77
        L64:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.w r3 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.w
            T r7 = r0.element
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7)
            java.lang.String r7 = (java.lang.String) r7
            T r6 = r6.element
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6)
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.i r6 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.i) r6
            r3.<init>(r7, r6)
        L77:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.o(org.xmlpull.v1.XmlPullParser, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object p(org.xmlpull.v1.XmlPullParser r5, rs.c<? super java.lang.String> r6) {
        /*
            boolean r0 = r6 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.M
            if (r0 == 0) goto L13
            r0 = r6
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$M r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.M) r0
            int r1 = r0.f35294j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f35294j = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$M r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$M
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f35293i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f35294j
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f35292h
            kotlin.jvm.internal.Ref$ObjectRef r5 = (kotlin.jvm.internal.Ref.ObjectRef) r5
            kotlin.f.b(r6)
            goto L4f
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.f.b(r6)
            kotlin.jvm.internal.Ref$ObjectRef r6 = new kotlin.jvm.internal.Ref$ObjectRef
            r6.<init>()
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$L r2 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$L
            r4 = 0
            r2.<init>(r5, r4, r6)
            r0.f35292h = r6
            r0.f35294j = r3
            java.lang.Object r5 = kotlinx.coroutines.i.f(r2, r0)
            if (r5 != r1) goto L4e
            return r1
        L4e:
            r5 = r6
        L4f:
            T r5 = r5.element
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.p(org.xmlpull.v1.XmlPullParser, rs.c):java.lang.Object");
    }

    public static final boolean p0(XmlPullParser xmlPullParser) {
        if (xmlPullParser.getEventType() == 2) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object q(org.xmlpull.v1.XmlPullParser r5, rs.c<? super java.util.List<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.y>> r6) {
        /*
            boolean r0 = r6 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.O
            if (r0 == 0) goto L13
            r0 = r6
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$O r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.O) r0
            int r1 = r0.f35302j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f35302j = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$O r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$O
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f35301i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f35302j
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r5 = r0.f35300h
            java.util.List r5 = (java.util.List) r5
            kotlin.f.b(r6)
            goto L4f
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.f.b(r6)
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$N r2 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$N
            r4 = 0
            r2.<init>(r5, r4, r6)
            r0.f35300h = r6
            r0.f35302j = r3
            java.lang.Object r5 = kotlinx.coroutines.i.f(r2, r0)
            if (r5 != r1) goto L4e
            return r1
        L4e:
            r5 = r6
        L4f:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.q(org.xmlpull.v1.XmlPullParser, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object r(org.xmlpull.v1.XmlPullParser r12, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.y> r13) {
        /*
            boolean r0 = r13 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.Q
            if (r0 == 0) goto L13
            r0 = r13
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$Q r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.Q) r0
            int r1 = r0.f35313l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f35313l = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$Q r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$Q
            r0.<init>(r13)
        L18:
            java.lang.Object r13 = r0.f35312k
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f35313l
            r3 = 1
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r12 = r0.f35311j
            kotlin.jvm.internal.Ref$ObjectRef r12 = (kotlin.jvm.internal.Ref.ObjectRef) r12
            java.lang.Object r1 = r0.f35310i
            kotlin.jvm.internal.Ref$ObjectRef r1 = (kotlin.jvm.internal.Ref.ObjectRef) r1
            java.lang.Object r0 = r0.f35309h
            kotlin.jvm.internal.Ref$ObjectRef r0 = (kotlin.jvm.internal.Ref.ObjectRef) r0
            kotlin.f.b(r13)
            goto L6c
        L35:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L3d:
            kotlin.f.b(r13)
            kotlin.jvm.internal.Ref$ObjectRef r13 = new kotlin.jvm.internal.Ref$ObjectRef
            r13.<init>()
            kotlin.jvm.internal.Ref$ObjectRef r2 = new kotlin.jvm.internal.Ref$ObjectRef
            r2.<init>()
            kotlin.jvm.internal.Ref$ObjectRef r10 = new kotlin.jvm.internal.Ref$ObjectRef
            r10.<init>()
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$P r11 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$P
            r6 = 0
            r4 = r11
            r5 = r12
            r7 = r13
            r8 = r10
            r9 = r2
            r4.<init>(r5, r6, r7, r8, r9)
            r0.f35309h = r13
            r0.f35310i = r2
            r0.f35311j = r10
            r0.f35313l = r3
            java.lang.Object r12 = kotlinx.coroutines.i.f(r11, r0)
            if (r12 != r1) goto L69
            return r1
        L69:
            r0 = r13
            r1 = r2
            r12 = r10
        L6c:
            T r13 = r0.element
            if (r13 == 0) goto L95
            T r2 = r1.element
            if (r2 == 0) goto L95
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v r2 = com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v.f35651n
            if (r13 != r2) goto L7d
            T r13 = r12.element
            if (r13 != 0) goto L7d
            goto L95
        L7d:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.y r13 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.y
            T r0 = r0.element
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.v) r0
            T r1 = r1.element
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            java.lang.String r1 = (java.lang.String) r1
            T r12 = r12.element
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t r12 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t) r12
            r13.<init>(r0, r1, r12)
            goto L96
        L95:
            r13 = 0
        L96:
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.r(org.xmlpull.v1.XmlPullParser, rs.c):java.lang.Object");
    }

    public static final boolean r0(XmlPullParser xmlPullParser) {
        if (xmlPullParser.getEventType() == 4) {
            return true;
        }
        return false;
    }

    public static final Object s(XmlPullParser xmlPullParser, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.z> cVar) {
        return gt.e.g(com.moloco.sdk.internal.scheduling.c.a().getIo(), new R(xmlPullParser, null), cVar);
    }

    public static final Integer s0(XmlPullParser xmlPullParser) {
        int i10;
        String G2 = G(xmlPullParser, "sequence");
        if (G2 != null) {
            Integer intOrNull = StringsKt.toIntOrNull(G2);
            if (intOrNull != null) {
                i10 = intOrNull.intValue();
            } else {
                i10 = 999;
            }
            return Integer.valueOf(i10);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object t(org.xmlpull.v1.XmlPullParser r12, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.z> r13) {
        /*
            boolean r0 = r13 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.T
            if (r0 == 0) goto L13
            r0 = r13
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$T r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.T) r0
            int r1 = r0.f35327l
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f35327l = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$T r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$T
            r0.<init>(r13)
        L18:
            java.lang.Object r13 = r0.f35326k
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f35327l
            r3 = 1
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r12 = r0.f35325j
            kotlin.jvm.internal.Ref$ObjectRef r12 = (kotlin.jvm.internal.Ref.ObjectRef) r12
            java.lang.Object r1 = r0.f35324i
            kotlin.jvm.internal.Ref$ObjectRef r1 = (kotlin.jvm.internal.Ref.ObjectRef) r1
            java.lang.Object r0 = r0.f35323h
            java.util.List r0 = (java.util.List) r0
            kotlin.f.b(r13)
            goto L6c
        L35:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L3d:
            kotlin.f.b(r13)
            java.util.ArrayList r13 = new java.util.ArrayList
            r13.<init>()
            kotlin.jvm.internal.Ref$ObjectRef r2 = new kotlin.jvm.internal.Ref$ObjectRef
            r2.<init>()
            kotlin.jvm.internal.Ref$ObjectRef r10 = new kotlin.jvm.internal.Ref$ObjectRef
            r10.<init>()
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$S r11 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$S
            r6 = 0
            r4 = r11
            r5 = r12
            r7 = r2
            r8 = r10
            r9 = r13
            r4.<init>(r5, r6, r7, r8, r9)
            r0.f35323h = r13
            r0.f35324i = r2
            r0.f35325j = r10
            r0.f35327l = r3
            java.lang.Object r12 = kotlinx.coroutines.i.f(r11, r0)
            if (r12 != r1) goto L69
            return r1
        L69:
            r0 = r13
            r1 = r2
            r12 = r10
        L6c:
            boolean r13 = r0.isEmpty()
            if (r13 == 0) goto L78
            T r13 = r12.element
            if (r13 != 0) goto L78
            r12 = 0
            goto L86
        L78:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.z r13 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.z
            T r12 = r12.element
            java.lang.String r12 = (java.lang.String) r12
            T r1 = r1.element
            java.lang.String r1 = (java.lang.String) r1
            r13.<init>(r0, r12, r1)
            r12 = r13
        L86:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.t(org.xmlpull.v1.XmlPullParser, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object u(org.xmlpull.v1.XmlPullParser r6, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.b0> r7) {
        /*
            boolean r0 = r7 instanceof com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.V
            if (r0 == 0) goto L13
            r0 = r7
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$V r0 = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.V) r0
            int r1 = r0.f35336k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f35336k = r1
            goto L18
        L13:
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$V r0 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$V
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f35335j
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f35336k
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 != r4) goto L32
            java.lang.Object r6 = r0.f35334i
            kotlin.jvm.internal.Ref$ObjectRef r6 = (kotlin.jvm.internal.Ref.ObjectRef) r6
            java.lang.Object r0 = r0.f35333h
            kotlin.jvm.internal.Ref$ObjectRef r0 = (kotlin.jvm.internal.Ref.ObjectRef) r0
            kotlin.f.b(r7)
            goto L5b
        L32:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3a:
            kotlin.f.b(r7)
            kotlin.jvm.internal.Ref$ObjectRef r7 = new kotlin.jvm.internal.Ref$ObjectRef
            r7.<init>()
            kotlin.jvm.internal.Ref$ObjectRef r2 = new kotlin.jvm.internal.Ref$ObjectRef
            r2.<init>()
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$U r5 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k$U
            r5.<init>(r6, r3, r7, r2)
            r0.f35333h = r7
            r0.f35334i = r2
            r0.f35336k = r4
            java.lang.Object r6 = kotlinx.coroutines.i.f(r5, r0)
            if (r6 != r1) goto L59
            return r1
        L59:
            r0 = r7
            r6 = r2
        L5b:
            T r6 = r6.element
            java.lang.String r6 = (java.lang.String) r6
            if (r6 == 0) goto L6a
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.b0 r3 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.b0
            T r7 = r0.element
            java.lang.String r7 = (java.lang.String) r7
            r3.<init>(r7, r6)
        L6a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.u(org.xmlpull.v1.XmlPullParser, rs.c):java.lang.Object");
    }

    public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.t u0(XmlPullParser xmlPullParser) {
        String G2 = G(xmlPullParser, "skipoffset");
        if (G2 != null) {
            return b0(G2);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00bc A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object v(org.xmlpull.v1.XmlPullParser r17, rs.c<? super com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.b> r18) {
        /*
            Method dump skipped, instructions count: 190
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.k.v(org.xmlpull.v1.XmlPullParser, rs.c):java.lang.Object");
    }

    public static final j w() {
        return new j();
    }
}
