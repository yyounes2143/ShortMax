package com.bytedance.applog.exposure;

import android.app.Activity;
import android.app.Application;
import android.view.View;
import android.widget.ImageView;
import com.bytedance.applog.InitConfig;
import com.bytedance.applog.log.IAppLogLogger;
import com.bytedance.bdtracker.d;
import com.bytedance.bdtracker.d5;
import com.bytedance.bdtracker.l0;
import com.bytedance.bdtracker.o0;
import com.bytedance.bdtracker.q0;
import com.bytedance.bdtracker.r0;
import com.bytedance.bdtracker.s0;
import com.bytedance.bdtracker.t0;
import com.bytedance.bdtracker.u0;
import com.bytedance.bdtracker.z0;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes3.dex */
public final class ViewExposureManager {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final WeakHashMap<Activity, WeakHashMap<View, r0>> f11829a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f11830b;

    /* renamed from: c  reason: collision with root package name */
    public u0 f11831c;

    /* renamed from: d  reason: collision with root package name */
    public ViewExposureConfig f11832d;

    /* renamed from: e  reason: collision with root package name */
    public final i f11833e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final d f11834f;

    /* renamed from: g  reason: collision with root package name */
    public static final /* synthetic */ KProperty[] f11827g = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ViewExposureManager.class), "task", "getTask()Lcom/bytedance/applog/exposure/task/ViewExposureTask;"))};
    public static final a Companion = new a(null);

    /* renamed from: h  reason: collision with root package name */
    public static final ViewExposureConfig f11828h = new ViewExposureConfig(Float.valueOf(1.0f), null, 2, null);

    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function0<z0> {
        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public z0 invoke() {
            return new z0(ViewExposureManager.this);
        }
    }

    public ViewExposureManager(@NotNull d appLog) {
        Intrinsics.checkParameterIsNotNull(appLog, "appLog");
        this.f11834f = appLog;
        this.f11829a = new WeakHashMap<>();
        Application application = appLog.f11914n;
        if (application != null) {
            this.f11831c = new u0(application);
            this.f11832d = f11828h;
            this.f11833e = c.b(new b());
            InitConfig initConfig = appLog.getInitConfig();
            if (initConfig != null && initConfig.isExposureEnabled() && !this.f11830b) {
                this.f11831c.b(new s0(this));
                this.f11831c.a(new t0(this));
                this.f11830b = true;
                return;
            }
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.app.Application");
    }

    public static final /* synthetic */ z0 access$getTask$p(ViewExposureManager viewExposureManager) {
        i iVar = viewExposureManager.f11833e;
        KProperty kProperty = f11827g[0];
        return (z0) iVar.getValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000a, code lost:
        if (r3 != null) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.view.View r9, com.bytedance.applog.exposure.ViewExposureData r10) {
        /*
            r8 = this;
            com.bytedance.bdtracker.d r0 = r8.f11834f
            r1 = 7
            r2 = 0
            if (r10 == 0) goto L10
            java.lang.String r3 = r10.getEventName()     // Catch: java.lang.Throwable -> Ld
            if (r3 == 0) goto L10
            goto L12
        Ld:
            r9 = move-exception
            goto L9b
        L10:
            java.lang.String r3 = "$bav2b_exposure"
        L12:
            r4 = 1
            com.bytedance.bdtracker.w3 r9 = com.bytedance.bdtracker.l0.b.a(r9, r4)     // Catch: java.lang.Throwable -> Ld
            org.json.JSONObject r4 = new org.json.JSONObject     // Catch: java.lang.Throwable -> Ld
            r4.<init>()     // Catch: java.lang.Throwable -> Ld
            java.lang.String r5 = "page_key"
            java.lang.String r6 = r9.f12497v     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            r4.put(r5, r6)     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            java.lang.String r5 = "page_title"
            java.lang.String r6 = r9.f12498w     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            r4.put(r5, r6)     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            java.lang.String r5 = "element_path"
            java.lang.String r6 = r9.f12499x     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            r4.put(r5, r6)     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            java.lang.String r5 = "element_width"
            int r6 = r9.C     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            r4.put(r5, r6)     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            java.lang.String r5 = "element_height"
            int r6 = r9.D     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            r4.put(r5, r6)     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            java.lang.String r5 = "element_id"
            java.lang.String r6 = r9.f12500y     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            r4.put(r5, r6)     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            java.lang.String r5 = "element_type"
            java.lang.String r6 = r9.f12501z     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            r4.put(r5, r6)     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            java.util.ArrayList<java.lang.String> r5 = r9.B     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            if (r5 == 0) goto L67
            boolean r5 = r5.isEmpty()     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            if (r5 == 0) goto L58
            goto L67
        L58:
            java.lang.String r5 = "positions"
            org.json.JSONArray r6 = new org.json.JSONArray     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            java.util.ArrayList<java.lang.String> r7 = r9.B     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            r6.<init>(r7)     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            r4.put(r5, r6)     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            goto L67
        L65:
            r9 = move-exception
            goto L8a
        L67:
            java.util.ArrayList<java.lang.String> r5 = r9.A     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            if (r5 == 0) goto L7e
            boolean r5 = r5.isEmpty()     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            if (r5 == 0) goto L72
            goto L7e
        L72:
            java.lang.String r5 = "texts"
            org.json.JSONArray r6 = new org.json.JSONArray     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            java.util.ArrayList<java.lang.String> r9 = r9.A     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            r6.<init>(r9)     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            r4.put(r5, r6)     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
        L7e:
            if (r10 == 0) goto L95
            org.json.JSONObject r9 = r10.getProperties()     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            if (r9 == 0) goto L95
            com.bytedance.bdtracker.l0.b.b(r9, r4)     // Catch: java.lang.Throwable -> Ld java.lang.Exception -> L65
            goto L95
        L8a:
            com.bytedance.bdtracker.d r10 = r8.f11834f     // Catch: java.lang.Throwable -> Ld
            com.bytedance.applog.log.IAppLogLogger r10 = r10.D     // Catch: java.lang.Throwable -> Ld
            java.lang.String r5 = "JSON handle failed"
            java.lang.Object[] r6 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> Ld
            r10.error(r1, r5, r9, r6)     // Catch: java.lang.Throwable -> Ld
        L95:
            com.bytedance.bdtracker.d r9 = r8.f11834f     // Catch: java.lang.Throwable -> Ld
            r9.onEventV3(r3, r4, r2)     // Catch: java.lang.Throwable -> Ld
            goto La4
        L9b:
            com.bytedance.applog.log.IAppLogLogger r10 = r0.D
            java.lang.Object[] r0 = new java.lang.Object[r2]
            java.lang.String r2 = "Run task failed"
            r10.error(r1, r2, r9, r0)
        La4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.applog.exposure.ViewExposureManager.a(android.view.View, com.bytedance.applog.exposure.ViewExposureData):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x008e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0020 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void checkViewExposureFromActivity$agent_liteGlobalRelease(@org.jetbrains.annotations.NotNull android.app.Activity r14) {
        /*
            r13 = this;
            java.lang.String r0 = "activity"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r14, r0)
            com.bytedance.bdtracker.d r0 = r13.f11834f
            r1 = 7
            r2 = 0
            java.util.WeakHashMap<android.app.Activity, java.util.WeakHashMap<android.view.View, com.bytedance.bdtracker.r0>> r3 = r13.f11829a     // Catch: java.lang.Throwable -> L4d
            java.lang.Object r14 = r3.get(r14)     // Catch: java.lang.Throwable -> L4d
            java.util.WeakHashMap r14 = (java.util.WeakHashMap) r14     // Catch: java.lang.Throwable -> L4d
            if (r14 == 0) goto Leb
            java.lang.String r3 = "activitiesMap[activity] ?: return@runSafely"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r14, r3)     // Catch: java.lang.Throwable -> L4d
            java.util.Set r14 = r14.entrySet()     // Catch: java.lang.Throwable -> L4d
            java.util.Iterator r14 = r14.iterator()     // Catch: java.lang.Throwable -> L4d
        L20:
            boolean r3 = r14.hasNext()     // Catch: java.lang.Throwable -> L4d
            if (r3 == 0) goto Leb
            java.lang.Object r3 = r14.next()     // Catch: java.lang.Throwable -> L4d
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3     // Catch: java.lang.Throwable -> L4d
            java.lang.Object r4 = r3.getKey()     // Catch: java.lang.Throwable -> L4d
            android.view.View r4 = (android.view.View) r4     // Catch: java.lang.Throwable -> L4d
            java.lang.Object r3 = r3.getValue()     // Catch: java.lang.Throwable -> L4d
            com.bytedance.bdtracker.r0 r3 = (com.bytedance.bdtracker.r0) r3     // Catch: java.lang.Throwable -> L4d
            com.bytedance.applog.exposure.ViewExposureData r5 = r3.f12355a     // Catch: java.lang.Throwable -> L4d
            boolean r6 = r3.f12356b     // Catch: java.lang.Throwable -> L4d
            java.lang.String r7 = "view"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r4, r7)     // Catch: java.lang.Throwable -> L4d
            com.bytedance.applog.exposure.ViewExposureConfig r7 = r5.getConfig()     // Catch: java.lang.Throwable -> L4d
            r8 = 0
            if (r7 == 0) goto L50
            java.lang.Float r7 = r7.getAreaRatio()     // Catch: java.lang.Throwable -> L4d
            goto L51
        L4d:
            r14 = move-exception
            goto Le2
        L50:
            r7 = r8
        L51:
            java.lang.String r9 = "$this$isVisibleInViewport"
            kotlin.jvm.internal.Intrinsics.checkParameterIsNotNull(r4, r9)     // Catch: java.lang.Throwable -> L4d
            boolean r9 = com.bytedance.bdtracker.l0.b.e(r4)     // Catch: java.lang.Throwable -> L4d
            r10 = 1
            if (r9 == 0) goto L8b
            android.graphics.Rect r9 = new android.graphics.Rect     // Catch: java.lang.Throwable -> L4d
            r9.<init>()     // Catch: java.lang.Throwable -> L4d
            boolean r11 = r4.getLocalVisibleRect(r9)     // Catch: java.lang.Throwable -> L4d
            if (r11 == 0) goto L8b
            int r11 = r9.width()     // Catch: java.lang.Throwable -> L4d
            int r9 = r9.height()     // Catch: java.lang.Throwable -> L4d
            int r9 = r9 * r11
            float r9 = (float) r9     // Catch: java.lang.Throwable -> L4d
            int r11 = r4.getMeasuredHeight()     // Catch: java.lang.Throwable -> L4d
            int r12 = r4.getMeasuredWidth()     // Catch: java.lang.Throwable -> L4d
            int r12 = r12 * r11
            float r11 = (float) r12     // Catch: java.lang.Throwable -> L4d
            if (r7 == 0) goto L83
            float r7 = r7.floatValue()     // Catch: java.lang.Throwable -> L4d
            goto L84
        L83:
            r7 = 0
        L84:
            float r11 = r11 * r7
            int r7 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r7 < 0) goto L8b
            r7 = r10
            goto L8c
        L8b:
            r7 = r2
        L8c:
            if (r6 == r7) goto L20
            boolean r6 = r3.f12356b     // Catch: java.lang.Throwable -> L4d
            if (r6 != 0) goto L96
            r13.a(r4, r5)     // Catch: java.lang.Throwable -> L4d
            goto L97
        L96:
            r10 = r2
        L97:
            r3.f12356b = r10     // Catch: java.lang.Throwable -> L4d
            com.bytedance.applog.exposure.ViewExposureConfig r6 = r5.getConfig()     // Catch: java.lang.Throwable -> L4d
            if (r6 == 0) goto La3
            java.lang.Boolean r8 = r6.getVisualDiagnosis()     // Catch: java.lang.Throwable -> L4d
        La3:
            java.lang.Boolean r6 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L4d
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r6)     // Catch: java.lang.Throwable -> L4d
            if (r6 == 0) goto Lb0
            boolean r6 = r3.f12356b     // Catch: java.lang.Throwable -> L4d
            com.bytedance.bdtracker.l0.b.b(r4, r6)     // Catch: java.lang.Throwable -> L4d
        Lb0:
            com.bytedance.bdtracker.d r6 = r13.f11834f     // Catch: java.lang.Throwable -> L4d
            com.bytedance.applog.log.IAppLogLogger r6 = r6.D     // Catch: java.lang.Throwable -> L4d
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4d
            r7.<init>()     // Catch: java.lang.Throwable -> L4d
            java.lang.String r8 = "[ViewExposure] visible change to "
            r7.append(r8)     // Catch: java.lang.Throwable -> L4d
            boolean r3 = r3.f12356b     // Catch: java.lang.Throwable -> L4d
            r7.append(r3)     // Catch: java.lang.Throwable -> L4d
            java.lang.String r3 = ", config="
            r7.append(r3)     // Catch: java.lang.Throwable -> L4d
            com.bytedance.applog.exposure.ViewExposureConfig r3 = r5.getConfig()     // Catch: java.lang.Throwable -> L4d
            r7.append(r3)     // Catch: java.lang.Throwable -> L4d
            java.lang.String r3 = " view="
            r7.append(r3)     // Catch: java.lang.Throwable -> L4d
            r7.append(r4)     // Catch: java.lang.Throwable -> L4d
            java.lang.String r3 = r7.toString()     // Catch: java.lang.Throwable -> L4d
            java.lang.Object[] r4 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> L4d
            r6.debug(r1, r3, r4)     // Catch: java.lang.Throwable -> L4d
            goto L20
        Le2:
            com.bytedance.applog.log.IAppLogLogger r0 = r0.D
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.String r3 = "Run task failed"
            r0.error(r1, r3, r14, r2)
        Leb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.applog.exposure.ViewExposureManager.checkViewExposureFromActivity$agent_liteGlobalRelease(android.app.Activity):void");
    }

    public final void disposeViewExposure(@NotNull View view) {
        Activity a10;
        r0 remove;
        Intrinsics.checkParameterIsNotNull(view, "view");
        d dVar = this.f11834f;
        Boolean bool = null;
        if (view == null) {
            a10 = null;
        } else {
            try {
                a10 = l0.b.a(view.getContext());
            } catch (Throwable th2) {
                dVar.D.error(7, "Run task failed", th2, new Object[0]);
                return;
            }
        }
        if (a10 != null) {
            Intrinsics.checkExpressionValueIsNotNull(a10, "ActivityUtil.findActivit…view) ?: return@runSafely");
            WeakHashMap<View, r0> weakHashMap = this.f11829a.get(a10);
            if (weakHashMap != null && (remove = weakHashMap.remove(view)) != null) {
                Intrinsics.checkExpressionValueIsNotNull(remove, "activitiesMap[activity]?…view) ?: return@runSafely");
                ViewExposureConfig config = remove.f12355a.getConfig();
                if (config != null) {
                    bool = config.getVisualDiagnosis();
                }
                if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
                    l0.b.a(view);
                }
            }
        }
    }

    @NotNull
    public final WeakHashMap<Activity, WeakHashMap<View, r0>> getActivitiesMap$agent_liteGlobalRelease() {
        return this.f11829a;
    }

    @NotNull
    public final d getAppLog() {
        return this.f11834f;
    }

    @Nullable
    public final Activity getCurrActivity() {
        return this.f11831c.f12425a.get();
    }

    public final void observeViewExposure(@NotNull View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        observeViewExposure(view, null);
    }

    public final void updateExposureCheckStrategy(@Nullable q0 q0Var) {
        i iVar = this.f11833e;
        KProperty kProperty = f11827g[0];
        ((z0) iVar.getValue()).a(q0Var);
    }

    public final void updateViewExposureConfig(@NotNull ViewExposureConfig viewExposureConfig) {
        Intrinsics.checkParameterIsNotNull(viewExposureConfig, "viewExposureConfig");
        this.f11832d = viewExposureConfig;
    }

    public final void observeViewExposure(@NotNull View enableViewExposureDebugMode, @Nullable ViewExposureData viewExposureData) {
        Float areaRatio;
        Boolean visualDiagnosis;
        Intrinsics.checkParameterIsNotNull(enableViewExposureDebugMode, "view");
        d dVar = this.f11834f;
        try {
            InitConfig initConfig = dVar.getInitConfig();
            if (initConfig != null && initConfig.isExposureEnabled()) {
                Activity a10 = enableViewExposureDebugMode == null ? null : l0.b.a(enableViewExposureDebugMode.getContext());
                if (a10 == null) {
                    this.f11834f.D.warn(7, "[ViewExposure] observe failed: The view context is not Activity.", new Object[0]);
                    return;
                } else if (d5.b(enableViewExposureDebugMode)) {
                    this.f11834f.D.warn(7, "[ViewExposure] observe failed: The view is ignored.", new Object[0]);
                    return;
                } else {
                    WeakHashMap<View, r0> weakHashMap = this.f11829a.get(a10);
                    if (weakHashMap == null) {
                        weakHashMap = new WeakHashMap<>();
                        this.f11829a.put(a10, weakHashMap);
                    }
                    ViewExposureConfig copyWith = this.f11832d;
                    ViewExposureConfig config = viewExposureData != null ? viewExposureData.getConfig() : null;
                    Intrinsics.checkParameterIsNotNull(copyWith, "$this$copyWith");
                    if (config == null || (areaRatio = config.getAreaRatio()) == null) {
                        areaRatio = copyWith.getAreaRatio();
                    }
                    if (config == null || (visualDiagnosis = config.getVisualDiagnosis()) == null) {
                        visualDiagnosis = copyWith.getVisualDiagnosis();
                    }
                    ViewExposureConfig viewExposureConfig = new ViewExposureConfig(areaRatio, visualDiagnosis);
                    weakHashMap.put(enableViewExposureDebugMode, new r0(new ViewExposureData(viewExposureData != null ? viewExposureData.getEventName() : null, viewExposureData != null ? viewExposureData.getProperties() : null, viewExposureConfig), false, 2));
                    if (Intrinsics.areEqual(viewExposureConfig.getVisualDiagnosis(), Boolean.TRUE)) {
                        Intrinsics.checkParameterIsNotNull(enableViewExposureDebugMode, "$this$enableViewExposureDebugMode");
                        if (enableViewExposureDebugMode instanceof ImageView) {
                            ImageView imageView = (ImageView) enableViewExposureDebugMode;
                            imageView.setImageDrawable(new o0(imageView.getDrawable()));
                        }
                        enableViewExposureDebugMode.setBackground(new o0(enableViewExposureDebugMode.getBackground()));
                    }
                    checkViewExposureFromActivity$agent_liteGlobalRelease(a10);
                    this.f11831c.a(enableViewExposureDebugMode);
                    IAppLogLogger iAppLogLogger = this.f11834f.D;
                    iAppLogLogger.debug(7, "[ViewExposure] observe successful, data=" + viewExposureData + ", view=" + enableViewExposureDebugMode, new Object[0]);
                    return;
                }
            }
            this.f11834f.D.warn(7, "[ViewExposure] observe failed: InitConfig.exposureEnabled is not true.", new Object[0]);
        } catch (Throwable th2) {
            dVar.D.error(7, "Run task failed", th2, new Object[0]);
        }
    }
}
