package bm;

import androidx.annotation.VisibleForTesting;
import com.explorestack.protobuf.m1;
import io.bidmachine.protobuf.rendering.Rendering;
import io.bidmachine.protobuf.rendering.RenderingFeature;
import io.bidmachine.rendering.model.AdElementType;
import io.bidmachine.rendering.model.AnimationDirectionType;
import io.bidmachine.rendering.model.AnimationEventType;
import io.bidmachine.rendering.model.AnimationFunctionType;
import io.bidmachine.rendering.model.AnimationStyleType;
import io.bidmachine.rendering.model.BrokenCreativeAlgorithmType;
import io.bidmachine.rendering.model.CacheType;
import io.bidmachine.rendering.model.EventTaskType;
import io.bidmachine.rendering.model.EventType;
import io.bidmachine.rendering.model.FontStyleType;
import io.bidmachine.rendering.model.GradientDirection;
import io.bidmachine.rendering.model.GradientType;
import io.bidmachine.rendering.model.HorizontalGravity;
import io.bidmachine.rendering.model.ScaleType;
import io.bidmachine.rendering.model.SideType;
import io.bidmachine.rendering.model.StopDetectorAfter;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.b;
import rq.c;
import rq.f0;
import rq.g0;
import rq.i0;
import rq.j0;
import rq.k0;
import rq.l0;
import rq.n0;
import rq.p0;
import rq.q0;
import rq.r0;
import rq.s;
/* compiled from: AdaptiveRenderingParams.kt */
@Metadata
/* loaded from: classes7.dex */
public final class u extends xq.o {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final rq.b f2685b;

    /* compiled from: AdaptiveRenderingParams.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.values().length];
            try {
                iArr[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_WIDTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_HEIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_RIGHT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_BOTTOM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.ANCHOR_CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(Integer.valueOf(((Rendering.Phase) t10).getSequence()), Integer.valueOf(((Rendering.Phase) t11).getSequence()));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(@NotNull xq.k unifiedMediationParams) {
        super(unifiedMediationParams);
        Intrinsics.checkNotNullParameter(unifiedMediationParams, "unifiedMediationParams");
        Object n10 = unifiedMediationParams.n("rendering_configuration");
        if (n10 instanceof Rendering) {
            q0.a aVar = new q0.a();
            Float c10 = unifiedMediationParams.c("viewability_pixel_threshold");
            if (c10 != null) {
                aVar.d(c10.floatValue());
            }
            Boolean p10 = unifiedMediationParams.p("viewability_ignore_window_focus");
            if (p10 != null) {
                aVar.c(p10.booleanValue());
            }
            Boolean p11 = unifiedMediationParams.p("viewability_ignore_overlap");
            if (p11 != null) {
                aVar.b(p11.booleanValue());
            }
            this.f2685b = r((Rendering) n10, aVar.a());
            return;
        }
        this.f2685b = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String A() {
        return "BrokenCreativeDetector algorithms is empty";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String B() {
        return "Not all BrokenCreativeDetector algorithms were applied, check if the algorithms are specified correctly";
    }

    private final rq.o C(Rendering.Color color) {
        rq.r rVar;
        if (color == null || color == Rendering.Color.getDefaultInstance()) {
            return null;
        }
        if (color.hasColor()) {
            Integer r10 = yq.r.r(color.getColor());
            if (r10 == null) {
                io.bidmachine.core.a.e(new hr.b() { // from class: bm.t
                    @Override // hr.b
                    public final Object get() {
                        String D;
                        D = u.D();
                        return D;
                    }
                });
                return null;
            }
            rVar = new f0(r10.intValue());
        } else if (color.hasGradient()) {
            rq.w K = K(color.getGradient());
            if (K == null) {
                io.bidmachine.core.a.e(new hr.b() { // from class: bm.f
                    @Override // hr.b
                    public final Object get() {
                        String E;
                        E = u.E();
                        return E;
                    }
                });
                return null;
            }
            rVar = new rq.x(K);
        } else {
            io.bidmachine.core.a.e(new hr.b() { // from class: bm.g
                @Override // hr.b
                public final Object get() {
                    String F;
                    F = u.F();
                    return F;
                }
            });
            rVar = null;
        }
        if (rVar == null) {
            return null;
        }
        return new rq.o(rVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String D() {
        return "ColorSource don't found. Can't parse color";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String E() {
        return "ColorSource don't found. Can't create Gradient";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String F() {
        return "ColorSource don't found. Set one of: color, gradient";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String H(Rendering.Phase.ViewComponent.Layout.Constraint.Anchor anchor) {
        return "Unsupported SourceAnchor - " + anchor;
    }

    private final rq.w K(Rendering.Color.Gradient gradient) {
        if (gradient == null || gradient == Rendering.Color.Gradient.getDefaultInstance()) {
            return null;
        }
        final String type = gradient.getType();
        Intrinsics.checkNotNullExpressionValue(type, "gradient.type");
        GradientType a10 = GradientType.Companion.a(type);
        if (a10 == null) {
            io.bidmachine.core.a.e(new hr.b() { // from class: bm.h
                @Override // hr.b
                public final Object get() {
                    String L;
                    L = u.L(type);
                    return L;
                }
            });
            return null;
        }
        final String direction = gradient.getDirection();
        Intrinsics.checkNotNullExpressionValue(direction, "gradient.direction");
        GradientDirection a11 = GradientDirection.Companion.a(direction);
        if (a11 == null) {
            io.bidmachine.core.a.e(new hr.b() { // from class: bm.i
                @Override // hr.b
                public final Object get() {
                    String M;
                    M = u.M(direction);
                    return M;
                }
            });
            return null;
        }
        m1<String> colorsList = gradient.getColorsList();
        Intrinsics.checkNotNullExpressionValue(colorsList, "gradient.colorsList");
        ArrayList arrayList = new ArrayList();
        for (String str : colorsList) {
            Integer r10 = yq.r.r(str);
            if (r10 != null) {
                arrayList.add(r10);
            }
        }
        if (arrayList.isEmpty()) {
            io.bidmachine.core.a.e(new hr.b() { // from class: bm.j
                @Override // hr.b
                public final Object get() {
                    String N;
                    N = u.N();
                    return N;
                }
            });
            return null;
        }
        if (arrayList.size() != colorsList.size()) {
            io.bidmachine.core.a.e(new hr.b() { // from class: bm.k
                @Override // hr.b
                public final Object get() {
                    String O;
                    O = u.O();
                    return O;
                }
            });
        }
        return new rq.w(a10, a11, arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String L(String type) {
        Intrinsics.checkNotNullParameter(type, "$type");
        return "Incorrect gradient type parameter - " + type;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String M(String direction) {
        Intrinsics.checkNotNullParameter(direction, "$direction");
        return "Incorrect gradient direction parameter - " + direction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String N() {
        return "Failed to parse all colors. Check if colors are specified correctly.";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String O() {
        return "Not all colors were parsed, check if the colors are specified correctly";
    }

    private final rq.z P(Rendering.Image image) {
        k0 T;
        if (image == null || image == Rendering.Image.getDefaultInstance() || (T = T(image.getResource())) == null) {
            return null;
        }
        ScaleType w10 = e0.w(image.getScale());
        if (w10 == null) {
            w10 = ScaleType.None;
        }
        return new rq.z(w10, T);
    }

    private final i0 R(Rendering.Placeholder placeholder) {
        j0 j0Var;
        if (placeholder == null || placeholder == Rendering.Placeholder.getDefaultInstance()) {
            return null;
        }
        if (placeholder.hasName()) {
            String name = placeholder.getName();
            Intrinsics.checkNotNullExpressionValue(name, "placeholder.name");
            j0Var = new rq.e0(name);
        } else if (placeholder.hasColor()) {
            rq.o C = C(placeholder.getColor());
            if (C == null) {
                return null;
            }
            j0Var = new rq.q(C);
        } else if (placeholder.hasImage()) {
            rq.z P = P(placeholder.getImage());
            if (P == null) {
                return null;
            }
            j0Var = new rq.b0(P);
        } else {
            io.bidmachine.core.a.e(new hr.b() { // from class: bm.s
                @Override // hr.b
                public final Object get() {
                    String S;
                    S = u.S();
                    return S;
                }
            });
            j0Var = null;
        }
        if (j0Var == null) {
            return null;
        }
        return new i0(j0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String S() {
        return "PlaceholderSource don't found. Set one of: name, color, gradient";
    }

    private final k0 T(Rendering.Resource resource) {
        l0 l0Var;
        if (resource == null || resource == Rendering.Resource.getDefaultInstance()) {
            return null;
        }
        if (resource.hasBase64()) {
            String base64 = resource.getBase64();
            Intrinsics.checkNotNullExpressionValue(base64, "resource.base64");
            l0Var = new rq.i(base64);
        } else if (resource.hasUrl()) {
            String url = resource.getUrl();
            Intrinsics.checkNotNullExpressionValue(url, "resource.url");
            l0Var = new p0(url);
        } else {
            if (resource.hasPayload()) {
                Rendering.Resource.Payload payload = resource.getPayload();
                Intrinsics.checkNotNullExpressionValue(payload, "resource.payload");
                if (payload.hasHtml()) {
                    String html = payload.getHtml();
                    Intrinsics.checkNotNullExpressionValue(html, "payload.html");
                    l0Var = new rq.y(html);
                } else if (payload.hasXml()) {
                    String xml = payload.getXml();
                    Intrinsics.checkNotNullExpressionValue(xml, "payload.xml");
                    l0Var = new r0(xml);
                } else {
                    io.bidmachine.core.a.e(new hr.b() { // from class: bm.o
                        @Override // hr.b
                        public final Object get() {
                            String U;
                            U = u.U();
                            return U;
                        }
                    });
                }
            } else {
                io.bidmachine.core.a.e(new hr.b() { // from class: bm.p
                    @Override // hr.b
                    public final Object get() {
                        String V;
                        V = u.V();
                        return V;
                    }
                });
            }
            l0Var = null;
        }
        if (l0Var == null) {
            return null;
        }
        return new k0(l0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String U() {
        return "ResourceSource don't found. Set one of: html, xml";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String V() {
        return "ResourceSource don't found. Set one of: base64, url, payload";
    }

    private final Map<AnimationEventType, rq.d> t(List<Rendering.AdaptiveAnimation> list) {
        rq.d dVar;
        HashMap hashMap = new HashMap();
        for (Rendering.AdaptiveAnimation adaptiveAnimation : list) {
            AnimationEventType a10 = AnimationEventType.Companion.a(adaptiveAnimation.getEvent());
            if (a10 != null) {
                Rendering.AdaptiveAnimation.Style style = adaptiveAnimation.getStyle();
                Intrinsics.checkNotNullExpressionValue(style, "it.style");
                if (style.hasFade()) {
                    Rendering.AdaptiveAnimation.FadeAnimationOption fade = style.getFade();
                    Intrinsics.checkNotNullExpressionValue(fade, "style.fade");
                    Rendering.AdaptiveAnimation.Timing timing = fade.getTiming();
                    Intrinsics.checkNotNullExpressionValue(timing, "fadeAnimationOption.timing");
                    dVar = new rq.d(a10, AnimationStyleType.Fade, AnimationFunctionType.Companion.a(timing.getFunction()), e0.j(timing), null);
                } else if (style.hasSlide()) {
                    Rendering.AdaptiveAnimation.SlideAnimationOption slide = style.getSlide();
                    Intrinsics.checkNotNullExpressionValue(slide, "style.slide");
                    Rendering.AdaptiveAnimation.Timing timing2 = slide.getTiming();
                    Intrinsics.checkNotNullExpressionValue(timing2, "slideAnimationOption.timing");
                    dVar = new rq.d(a10, AnimationStyleType.Slide, AnimationFunctionType.Companion.a(timing2.getFunction()), e0.j(timing2), AnimationDirectionType.Companion.a(slide.getDirection()));
                }
                hashMap.put(a10, dVar);
            }
        }
        return hashMap;
    }

    private final rq.f v(Rendering.Background background) {
        rq.g gVar = null;
        if (background == null || background == Rendering.Background.getDefaultInstance()) {
            return null;
        }
        if (background.hasColor()) {
            rq.o C = C(background.getColor());
            if (C != null) {
                gVar = new rq.p(C);
            } else {
                io.bidmachine.core.a.e(new hr.b() { // from class: bm.e
                    @Override // hr.b
                    public final Object get() {
                        String w10;
                        w10 = u.w();
                        return w10;
                    }
                });
            }
        } else if (background.hasImage()) {
            rq.z P = P(background.getImage());
            if (P != null) {
                gVar = new rq.a0(P);
            } else {
                io.bidmachine.core.a.e(new hr.b() { // from class: bm.l
                    @Override // hr.b
                    public final Object get() {
                        String x10;
                        x10 = u.x();
                        return x10;
                    }
                });
            }
        } else {
            io.bidmachine.core.a.e(new hr.b() { // from class: bm.m
                @Override // hr.b
                public final Object get() {
                    String y10;
                    y10 = u.y();
                    return y10;
                }
            });
        }
        return new rq.f((float) background.getOpacity(), gVar, R(background.getPlaceholder()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String w() {
        return "BackgroundSource don't found. Can't create Color";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String x() {
        return "BackgroundSource don't found. Can't create Image";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String y() {
        return "BackgroundSource don't found. Set one of: color, gradient";
    }

    private final rq.m z(List<RenderingFeature> list) {
        Object obj;
        RenderingFeature.BrokenCreativeDetector.Configuration configuration;
        rq.k kVar;
        RenderingFeature.BrokenCreativeDetector brokenCreativeDetector;
        if (list.isEmpty()) {
            return null;
        }
        Iterator<T> it = list.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                RenderingFeature renderingFeature = (RenderingFeature) obj;
                if (renderingFeature.hasBrokenCreativeDetector() && renderingFeature.getBrokenCreativeDetector().hasConfiguration()) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        RenderingFeature renderingFeature2 = (RenderingFeature) obj;
        if (renderingFeature2 != null && (brokenCreativeDetector = renderingFeature2.getBrokenCreativeDetector()) != null) {
            configuration = brokenCreativeDetector.getConfiguration();
        } else {
            configuration = null;
        }
        if (configuration == null) {
            return null;
        }
        List<RenderingFeature.BrokenCreativeDetector.Algorithm> algorithmsList = configuration.getAlgorithmsList();
        Intrinsics.checkNotNullExpressionValue(algorithmsList, "brokenCreativeDetectorConfiguration.algorithmsList");
        ArrayList arrayList = new ArrayList();
        for (RenderingFeature.BrokenCreativeDetector.Algorithm algorithm : algorithmsList) {
            BrokenCreativeAlgorithmType a10 = BrokenCreativeAlgorithmType.Companion.a(algorithm.getName());
            if (a10 == null) {
                kVar = null;
            } else {
                kVar = new rq.k(a10, (float) algorithm.getThreshold(), (float) algorithm.getWeight());
            }
            if (kVar != null) {
                arrayList.add(kVar);
            }
        }
        if (arrayList.isEmpty()) {
            io.bidmachine.core.a.e(new hr.b() { // from class: bm.q
                @Override // hr.b
                public final Object get() {
                    String A;
                    A = u.A();
                    return A;
                }
            });
            return null;
        }
        if (arrayList.size() != algorithmsList.size()) {
            io.bidmachine.core.a.e(new hr.b() { // from class: bm.r
                @Override // hr.b
                public final Object get() {
                    String B;
                    B = u.B();
                    return B;
                }
            });
        }
        long timeout = (long) configuration.getTimeout();
        double downscaleFactor = configuration.getDownscaleFactor();
        boolean errorOnly = configuration.getErrorOnly();
        boolean allowDuplicate = configuration.getAllowDuplicate();
        StopDetectorAfter a11 = StopDetectorAfter.Companion.a(configuration.getStopAfter());
        if (a11 == null) {
            a11 = StopDetectorAfter.AnyCreative;
        }
        return new rq.m(timeout, downscaleFactor, errorOnly, allowDuplicate, a11, configuration.getWeightThreshold(), arrayList);
    }

    @VisibleForTesting
    @NotNull
    public final rq.s G(@Nullable Rendering.Phase.ViewComponent.Layout layout) {
        int i10;
        s.a aVar = new s.a();
        if (layout == null) {
            return aVar.a();
        }
        List<Rendering.Phase.ViewComponent.Layout.Constraint> constraintsList = layout.getConstraintsList();
        Intrinsics.checkNotNullExpressionValue(constraintsList, "layout.constraintsList");
        for (Rendering.Phase.ViewComponent.Layout.Constraint constraint : constraintsList) {
            final Rendering.Phase.ViewComponent.Layout.Constraint.Anchor sourceAnchor = constraint.getSourceAnchor();
            Rendering.Phase.ViewComponent.Layout.Constraint.Anchor targetAnchor = constraint.getTargetAnchor();
            String target = constraint.getTarget();
            Intrinsics.checkNotNullExpressionValue(target, "constraint.target");
            float value = (float) constraint.getValue();
            if (sourceAnchor == null) {
                i10 = -1;
            } else {
                i10 = a.$EnumSwitchMapping$0[sourceAnchor.ordinal()];
            }
            switch (i10) {
                case 1:
                    aVar.n(value);
                    aVar.o((float) constraint.getMultiplier());
                    break;
                case 2:
                    aVar.c(value);
                    aVar.d((float) constraint.getMultiplier());
                    break;
                case 3:
                    SideType y10 = e0.y(targetAnchor);
                    if (y10 != null) {
                        aVar.e(new n0(y10, target));
                    }
                    aVar.g(value);
                    break;
                case 4:
                    SideType y11 = e0.y(targetAnchor);
                    if (y11 != null) {
                        aVar.k(new n0(y11, target));
                    }
                    aVar.i(value);
                    break;
                case 5:
                    SideType y12 = e0.y(targetAnchor);
                    if (y12 != null) {
                        aVar.j(new n0(y12, target));
                    }
                    aVar.h(value);
                    break;
                case 6:
                    SideType y13 = e0.y(targetAnchor);
                    if (y13 != null) {
                        aVar.b(new n0(y13, target));
                    }
                    aVar.f(value);
                    break;
                case 7:
                    aVar.l(value);
                    break;
                case 8:
                    aVar.m(value);
                    break;
                default:
                    io.bidmachine.core.a.e(new hr.b() { // from class: bm.n
                        @Override // hr.b
                        public final Object get() {
                            String H;
                            H = u.H(Rendering.Phase.ViewComponent.Layout.Constraint.Anchor.this);
                            return H;
                        }
                    });
                    break;
            }
        }
        return aVar.a();
    }

    @VisibleForTesting
    @Nullable
    public final rq.u I(@Nullable Rendering.Phase.Event event) {
        EventType r10;
        if (event == null || event == Rendering.Phase.Event.getDefaultInstance() || (r10 = e0.r(event.getName())) == null) {
            return null;
        }
        List<Rendering.Phase.Event.Task> tasksList = event.getTasksList();
        Intrinsics.checkNotNullExpressionValue(tasksList, "event.tasksList");
        ArrayList arrayList = new ArrayList();
        for (Rendering.Phase.Event.Task task : tasksList) {
            rq.v J = J(task);
            if (J != null) {
                arrayList.add(J);
            }
        }
        String source = event.getSource();
        Intrinsics.checkNotNullExpressionValue(source, "event.source");
        return new rq.u(r10, source, arrayList);
    }

    @VisibleForTesting
    @Nullable
    public final rq.v J(@Nullable Rendering.Phase.Event.Task task) {
        EventTaskType p10;
        if (task == null || task == Rendering.Phase.Event.Task.getDefaultInstance() || (p10 = e0.p(task.getName())) == null) {
            return null;
        }
        String target = task.getTarget();
        Intrinsics.checkNotNullExpressionValue(target, "task.target");
        String value = task.getValue();
        m1 stateGroupsList = task.getStateGroupsList();
        Intrinsics.checkNotNullExpressionValue(stateGroupsList, "task.stateGroupsList");
        return new rq.v(p10, target, value, CollectionsKt.d1(stateGroupsList));
    }

    @VisibleForTesting
    @Nullable
    public final List<rq.c0> Q(@Nullable List<Rendering.Phase.ViewComponent.Measurer> list) {
        List<Rendering.Phase.ViewComponent.Measurer> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            List<Rendering.Phase.ViewComponent.Measurer> list3 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.z(list3, 10));
            for (Rendering.Phase.ViewComponent.Measurer measurer : list3) {
                String name = measurer.getName();
                Intrinsics.checkNotNullExpressionValue(name, "it.name");
                arrayList.add(new rq.c0(name, measurer.getParametersMap()));
            }
            return arrayList;
        }
        return null;
    }

    @Nullable
    public final rq.b W() {
        return this.f2685b;
    }

    public boolean X(@NotNull xq.c callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (this.f2685b == null) {
            callback.onAdLoadFailed(fr.a.k("rendering_configuration"));
            return false;
        }
        return true;
    }

    @VisibleForTesting
    @Nullable
    public final rq.a q(@Nullable Rendering.Phase.ViewComponent viewComponent, @Nullable qq.b bVar) {
        AdElementType k10;
        String str;
        if (viewComponent == null || viewComponent == Rendering.Phase.ViewComponent.getDefaultInstance() || (k10 = e0.k(viewComponent.getType())) == null) {
            return null;
        }
        String it = viewComponent.getText();
        Intrinsics.checkNotNullExpressionValue(it, "it");
        if (it.length() > 0) {
            str = it;
        } else {
            str = null;
        }
        String name = viewComponent.getName();
        Intrinsics.checkNotNullExpressionValue(name, "viewComponent.name");
        k0 T = T(viewComponent.getResource());
        String source = viewComponent.getSource();
        String placeholder = viewComponent.getPlaceholder();
        rq.s G = G(viewComponent.getLayout());
        rq.e u10 = u(viewComponent.getAppearance());
        Map<String, String> customParamsMap = viewComponent.getCustomParamsMap();
        Intrinsics.checkNotNullExpressionValue(customParamsMap, "viewComponent.customParamsMap");
        List<Rendering.AdaptiveAnimation> animationsList = viewComponent.getAppearance().getAnimationsList();
        Intrinsics.checkNotNullExpressionValue(animationsList, "viewComponent.appearance.animationsList");
        Map<AnimationEventType, rq.d> t10 = t(animationsList);
        List<rq.c0> Q = Q(viewComponent.getMeasurersList());
        List<RenderingFeature> featuresList = viewComponent.getFeaturesList();
        Intrinsics.checkNotNullExpressionValue(featuresList, "viewComponent.featuresList");
        return new rq.a(k10, name, T, source, placeholder, str, G, u10, customParamsMap, t10, bVar, Q, z(featuresList));
    }

    @VisibleForTesting
    @NotNull
    public final rq.b r(@NotNull Rendering rendering, @NotNull q0 visibilityParams) {
        Intrinsics.checkNotNullParameter(rendering, "rendering");
        Intrinsics.checkNotNullParameter(visibilityParams, "visibilityParams");
        cm.a aVar = new cm.a();
        b.a e10 = new b.a().f(e0.t(rendering.getOrientation())).c(v(rendering.getBackground())).h(visibilityParams).e(rendering.getCustomParamsMap());
        CacheType m10 = e0.m(rendering.getCacheType());
        if (m10 != null) {
            e10.d(m10);
        }
        List<Rendering.Phase> phasesList = rendering.getPhasesList();
        Intrinsics.checkNotNullExpressionValue(phasesList, "rendering.phasesList");
        List<Rendering.Phase> g12 = CollectionsKt.g1(phasesList);
        if (g12.size() > 1) {
            CollectionsKt.D(g12, new b());
        }
        for (Rendering.Phase phase : g12) {
            rq.c s10 = s(phase, aVar);
            if (s10 != null) {
                if (phase.getSequence() == -1) {
                    e10.g(s10);
                } else {
                    e10.a(s10);
                }
            }
        }
        return e10.b();
    }

    @VisibleForTesting
    @Nullable
    public final rq.c s(@Nullable Rendering.Phase phase, @Nullable qq.b bVar) {
        if (phase != null && phase != Rendering.Phase.getDefaultInstance()) {
            c.a g10 = new c.a(phase.getSequence()).g(v(phase.getBackground()));
            List<Rendering.AdaptiveAnimation> animationsList = phase.getAnimationsList();
            Intrinsics.checkNotNullExpressionValue(animationsList, "phase.animationsList");
            c.a f10 = g10.f(kotlin.collections.p0.A(t(animationsList)));
            m1 stateGroupsList = phase.getStateGroupsList();
            Intrinsics.checkNotNullExpressionValue(stateGroupsList, "phase.stateGroupsList");
            c.a i10 = f10.j(CollectionsKt.g1(stateGroupsList)).i(phase.getCustomParamsMap());
            Integer r10 = yq.r.r(phase.getBackgroundColor());
            if (r10 != null) {
                i10.h(r10.intValue());
            }
            List<Rendering.Phase.ViewComponent> adsList = phase.getAdsList();
            Intrinsics.checkNotNullExpressionValue(adsList, "phase.adsList");
            for (Rendering.Phase.ViewComponent viewComponent : adsList) {
                rq.a q10 = q(viewComponent, bVar);
                if (q10 != null) {
                    i10.a(q10);
                }
            }
            List<Rendering.Phase.ViewComponent> controlsList = phase.getControlsList();
            Intrinsics.checkNotNullExpressionValue(controlsList, "phase.controlsList");
            for (Rendering.Phase.ViewComponent viewComponent2 : controlsList) {
                rq.a q11 = q(viewComponent2, bVar);
                if (q11 != null) {
                    i10.b(q11);
                }
            }
            List<Rendering.Phase.Event> eventsList = phase.getEventsList();
            Intrinsics.checkNotNullExpressionValue(eventsList, "phase.eventsList");
            for (Rendering.Phase.Event event : eventsList) {
                rq.u I = I(event);
                if (I != null) {
                    i10.c(I);
                }
            }
            List<Rendering.Phase.MethodComponent> methodsList = phase.getMethodsList();
            Intrinsics.checkNotNullExpressionValue(methodsList, "phase.methodsList");
            for (Rendering.Phase.MethodComponent methodComponent : methodsList) {
                String name = methodComponent.getName();
                Intrinsics.checkNotNullExpressionValue(name, "methodComponent.name");
                i10.d(new rq.d0(name));
            }
            return i10.e();
        }
        return null;
    }

    @VisibleForTesting
    @NotNull
    public final rq.e u(@Nullable Rendering.Phase.ViewComponent.Appearance appearance) {
        if (appearance != null && appearance != Rendering.Phase.ViewComponent.Appearance.getDefaultInstance()) {
            rq.f v10 = v(appearance.getBackground());
            Integer r10 = yq.r.r(appearance.getBackgroundColor());
            Boolean valueOf = Boolean.valueOf(appearance.getVisible());
            Boolean valueOf2 = Boolean.valueOf(appearance.getClickable());
            Float valueOf3 = Float.valueOf((float) appearance.getOpacity());
            Float valueOf4 = Float.valueOf((float) appearance.getFontSize());
            FontStyleType a10 = FontStyleType.Companion.a(appearance.getFontStyle());
            Boolean valueOf5 = Boolean.valueOf(appearance.getOutlined());
            Float valueOf6 = Float.valueOf((float) appearance.getStrokeWidth());
            Integer r11 = yq.r.r(appearance.getStrokeColor());
            Integer r12 = yq.r.r(appearance.getFillColor());
            Integer r13 = yq.r.r(appearance.getShadowColor());
            g0 a11 = g0.f66052e.a(appearance.getPadding());
            Float valueOf7 = Float.valueOf((float) appearance.getCornerRadius());
            Integer valueOf8 = Integer.valueOf(appearance.getTextNumberOfLines());
            Float valueOf9 = Float.valueOf((float) appearance.getTextLineSpacing());
            HorizontalGravity a12 = HorizontalGravity.Companion.a(appearance.getTextAlignment());
            if (a12 == null) {
                a12 = HorizontalGravity.Center;
            }
            return new rq.e(v10, r10, valueOf, valueOf2, valueOf3, valueOf4, a10, valueOf5, valueOf6, r11, r12, r13, a11, valueOf7, valueOf8, valueOf9, a12);
        }
        return new rq.e(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 131071, null);
    }
}
