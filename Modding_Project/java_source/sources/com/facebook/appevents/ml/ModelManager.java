package com.facebook.appevents.ml;

import a2.k;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.RestrictTo;
import b2.h;
import com.facebook.GraphRequest;
import com.facebook.appevents.ml.ModelManager;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.u0;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import e2.e;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.m0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import z1.c;
/* compiled from: ModelManager.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY})
@SourceDebugExtension({"SMAP\nModelManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModelManager.kt\ncom/facebook/appevents/ml/ModelManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,369:1\n1549#2:370\n1620#2,2:371\n1622#2:376\n1549#2:379\n1620#2,2:380\n1622#2:385\n13694#3,3:373\n13694#3,3:382\n37#4,2:377\n37#4,2:386\n*S KotlinDebug\n*F\n+ 1 ModelManager.kt\ncom/facebook/appevents/ml/ModelManager\n*L\n252#1:370\n252#1:371,2\n252#1:376\n275#1:379\n275#1:380,2\n275#1:385\n254#1:373,3\n277#1:382,3\n261#1:377,2\n284#1:386,2\n*E\n"})
/* loaded from: classes3.dex */
public final class ModelManager {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ModelManager f15146a = new ModelManager();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, a> f15147b = new ConcurrentHashMap();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final List<String> f15148c = CollectionsKt.q("other", "fb_mobile_complete_registration", "fb_mobile_add_to_cart", "fb_mobile_purchase", "fb_mobile_initiated_checkout");
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final List<String> f15149d = CollectionsKt.q(DevicePublicKeyStringDef.NONE, "address", "health");

    /* compiled from: ModelManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum Task {
        MTML_INTEGRITY_DETECT,
        MTML_APP_EVENT_PREDICTION;

        /* compiled from: ModelManager.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Task.values().length];
                try {
                    iArr[Task.MTML_INTEGRITY_DETECT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Task.MTML_APP_EVENT_PREDICTION.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        @NotNull
        public final String toKey() {
            int i10 = a.$EnumSwitchMapping$0[ordinal()];
            if (i10 != 1) {
                if (i10 == 2) {
                    return "app_event_pred";
                }
                throw new NoWhenBranchMatchedException();
            }
            return "integrity_detect";
        }

        @NotNull
        public final String toUseCase() {
            int i10 = a.$EnumSwitchMapping$0[ordinal()];
            if (i10 != 1) {
                if (i10 == 2) {
                    return "MTML_APP_EVENT_PRED";
                }
                throw new NoWhenBranchMatchedException();
            }
            return "MTML_INTEGRITY_DETECT";
        }
    }

    /* compiled from: ModelManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        @NotNull

        /* renamed from: i  reason: collision with root package name */
        public static final C0253a f15150i = new C0253a(null);
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private String f15151a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private String f15152b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private String f15153c;

        /* renamed from: d  reason: collision with root package name */
        private int f15154d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private float[] f15155e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private File f15156f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private com.facebook.appevents.ml.a f15157g;
        @Nullable

        /* renamed from: h  reason: collision with root package name */
        private Runnable f15158h;

        /* compiled from: ModelManager.kt */
        @Metadata
        /* renamed from: com.facebook.appevents.ml.ModelManager$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0253a {
            public /* synthetic */ C0253a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private final void d(String str, int i10) {
                File[] listFiles;
                File a10 = h.a();
                if (a10 != null && (listFiles = a10.listFiles()) != null && listFiles.length != 0) {
                    String str2 = str + '_' + i10;
                    for (File file : listFiles) {
                        String name = file.getName();
                        Intrinsics.checkNotNullExpressionValue(name, "name");
                        if (StringsKt.V(name, str, false, 2, null) && !StringsKt.V(name, str2, false, 2, null)) {
                            file.delete();
                        }
                    }
                }
            }

            private final void e(String str, String str2, k.a aVar) {
                File file = new File(h.a(), str2);
                if (str != null && !file.exists()) {
                    new k(str, file, aVar).execute(new String[0]);
                } else {
                    aVar.a(file);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final void g(List slaves, File file) {
                Intrinsics.checkNotNullParameter(slaves, "$slaves");
                Intrinsics.checkNotNullParameter(file, "file");
                final com.facebook.appevents.ml.a a10 = com.facebook.appevents.ml.a.f15159m.a(file);
                if (a10 != null) {
                    Iterator it = slaves.iterator();
                    while (it.hasNext()) {
                        final a aVar = (a) it.next();
                        a.f15150i.e(aVar.e(), aVar.g() + '_' + aVar.h() + "_rule", new k.a() { // from class: b2.f
                            @Override // a2.k.a
                            public final void a(File file2) {
                                ModelManager.a.C0253a.h(ModelManager.a.this, a10, file2);
                            }
                        });
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final void h(a slave, com.facebook.appevents.ml.a aVar, File file) {
                Intrinsics.checkNotNullParameter(slave, "$slave");
                Intrinsics.checkNotNullParameter(file, "file");
                slave.i(aVar);
                slave.k(file);
                Runnable runnable = slave.f15158h;
                if (runnable != null) {
                    runnable.run();
                }
            }

            @Nullable
            public final a c(@Nullable JSONObject jSONObject) {
                String useCase;
                String assetUri;
                String optString;
                int i10;
                float[] d10;
                if (jSONObject != null) {
                    try {
                        useCase = jSONObject.getString("use_case");
                        assetUri = jSONObject.getString("asset_uri");
                        optString = jSONObject.optString("rules_uri", null);
                        i10 = jSONObject.getInt("version_id");
                        d10 = ModelManager.d(ModelManager.f15146a, jSONObject.getJSONArray("thresholds"));
                        Intrinsics.checkNotNullExpressionValue(useCase, "useCase");
                        Intrinsics.checkNotNullExpressionValue(assetUri, "assetUri");
                    } catch (Exception unused) {
                        return null;
                    }
                }
                return new a(useCase, assetUri, optString, i10, d10);
            }

            public final void f(@NotNull a master, @NotNull final List<a> slaves) {
                Intrinsics.checkNotNullParameter(master, "master");
                Intrinsics.checkNotNullParameter(slaves, "slaves");
                d(master.g(), master.h());
                e(master.b(), master.g() + '_' + master.h(), new k.a() { // from class: b2.e
                    @Override // a2.k.a
                    public final void a(File file) {
                        ModelManager.a.C0253a.g(slaves, file);
                    }
                });
            }

            private C0253a() {
            }
        }

        public a(@NotNull String useCase, @NotNull String assetUri, @Nullable String str, int i10, @Nullable float[] fArr) {
            Intrinsics.checkNotNullParameter(useCase, "useCase");
            Intrinsics.checkNotNullParameter(assetUri, "assetUri");
            this.f15151a = useCase;
            this.f15152b = assetUri;
            this.f15153c = str;
            this.f15154d = i10;
            this.f15155e = fArr;
        }

        @NotNull
        public final String b() {
            return this.f15152b;
        }

        @Nullable
        public final com.facebook.appevents.ml.a c() {
            return this.f15157g;
        }

        @Nullable
        public final File d() {
            return this.f15156f;
        }

        @Nullable
        public final String e() {
            return this.f15153c;
        }

        @Nullable
        public final float[] f() {
            return this.f15155e;
        }

        @NotNull
        public final String g() {
            return this.f15151a;
        }

        public final int h() {
            return this.f15154d;
        }

        public final void i(@Nullable com.facebook.appevents.ml.a aVar) {
            this.f15157g = aVar;
        }

        @NotNull
        public final a j(@Nullable Runnable runnable) {
            this.f15158h = runnable;
            return this;
        }

        public final void k(@Nullable File file) {
            this.f15156f = file;
        }
    }

    /* compiled from: ModelManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Task.values().length];
            try {
                iArr[Task.MTML_APP_EVENT_PREDICTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Task.MTML_INTEGRITY_DETECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private ModelManager() {
    }

    public static final /* synthetic */ float[] d(ModelManager modelManager, JSONArray jSONArray) {
        if (o4.a.d(ModelManager.class)) {
            return null;
        }
        try {
            return modelManager.o(jSONArray);
        } catch (Throwable th2) {
            o4.a.b(th2, ModelManager.class);
            return null;
        }
    }

    private final void e(JSONObject jSONObject) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                try {
                    a c10 = a.f15150i.c(jSONObject.getJSONObject(keys.next()));
                    if (c10 != null) {
                        f15147b.put(c10.g(), c10);
                    }
                } catch (JSONException unused) {
                    return;
                }
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    public static final void f() {
        if (o4.a.d(ModelManager.class)) {
            return;
        }
        try {
            u0.C0(new Runnable() { // from class: b2.b
                @Override // java.lang.Runnable
                public final void run() {
                    ModelManager.g();
                }
            });
        } catch (Throwable th2) {
            o4.a.b(th2, ModelManager.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0057 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0058 A[Catch: all -> 0x002c, Exception -> 0x007b, TryCatch #2 {Exception -> 0x007b, all -> 0x002c, blocks: (B:5:0x000d, B:7:0x001f, B:10:0x0026, B:14:0x0033, B:16:0x0041, B:18:0x0047, B:24:0x006f, B:20:0x004f, B:23:0x0058, B:13:0x002e), top: B:29:0x000d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void g() {
        /*
            java.lang.String r0 = "model_request_timestamp"
            java.lang.String r1 = "models"
            java.lang.Class<com.facebook.appevents.ml.ModelManager> r2 = com.facebook.appevents.ml.ModelManager.class
            boolean r3 = o4.a.d(r2)
            if (r3 == 0) goto Ld
            return
        Ld:
            android.content.Context r3 = com.facebook.v.l()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            java.lang.String r4 = "com.facebook.internal.MODEL_STORE"
            r5 = 0
            android.content.SharedPreferences r3 = r3.getSharedPreferences(r4, r5)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            r4 = 0
            java.lang.String r4 = r3.getString(r1, r4)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            if (r4 == 0) goto L2e
            int r5 = r4.length()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            if (r5 != 0) goto L26
            goto L2e
        L26:
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            goto L33
        L2c:
            r0 = move-exception
            goto L78
        L2e:
            org.json.JSONObject r5 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            r5.<init>()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
        L33:
            r6 = 0
            long r6 = r3.getLong(r0, r6)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            com.facebook.internal.FeatureManager$Feature r4 = com.facebook.internal.FeatureManager.Feature.ModelRequest     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            boolean r4 = com.facebook.internal.FeatureManager.g(r4)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            if (r4 == 0) goto L4f
            int r4 = r5.length()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            if (r4 == 0) goto L4f
            com.facebook.appevents.ml.ModelManager r4 = com.facebook.appevents.ml.ModelManager.f15146a     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            boolean r4 = r4.n(r6)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            if (r4 != 0) goto L6f
        L4f:
            com.facebook.appevents.ml.ModelManager r4 = com.facebook.appevents.ml.ModelManager.f15146a     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            org.json.JSONObject r5 = r4.k()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            if (r5 != 0) goto L58
            return
        L58:
            android.content.SharedPreferences$Editor r3 = r3.edit()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            java.lang.String r4 = r5.toString()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            android.content.SharedPreferences$Editor r1 = r3.putString(r1, r4)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            long r3 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            android.content.SharedPreferences$Editor r0 = r1.putLong(r0, r3)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            r0.apply()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
        L6f:
            com.facebook.appevents.ml.ModelManager r0 = com.facebook.appevents.ml.ModelManager.f15146a     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            r0.e(r5)     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            r0.h()     // Catch: java.lang.Throwable -> L2c java.lang.Exception -> L7b
            goto L7b
        L78:
            o4.a.b(r0, r2)
        L7b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.ml.ModelManager.g():void");
    }

    private final void h() {
        if (o4.a.d(this)) {
            return;
        }
        try {
            ArrayList arrayList = new ArrayList();
            String str = null;
            int i10 = 0;
            for (Map.Entry<String, a> entry : f15147b.entrySet()) {
                String key = entry.getKey();
                a value = entry.getValue();
                if (Intrinsics.areEqual(key, Task.MTML_APP_EVENT_PREDICTION.toUseCase())) {
                    String b10 = value.b();
                    int max = Math.max(i10, value.h());
                    if (FeatureManager.g(FeatureManager.Feature.SuggestedEvents) && m()) {
                        arrayList.add(value.j(new Runnable() { // from class: b2.c
                            @Override // java.lang.Runnable
                            public final void run() {
                                ModelManager.i();
                            }
                        }));
                    }
                    str = b10;
                    i10 = max;
                }
                if (Intrinsics.areEqual(key, Task.MTML_INTEGRITY_DETECT.toUseCase())) {
                    str = value.b();
                    i10 = Math.max(i10, value.h());
                    if (FeatureManager.g(FeatureManager.Feature.IntelligentIntegrity)) {
                        arrayList.add(value.j(new Runnable() { // from class: b2.d
                            @Override // java.lang.Runnable
                            public final void run() {
                                ModelManager.j();
                            }
                        }));
                    }
                }
            }
            if (str != null && i10 > 0 && !arrayList.isEmpty()) {
                a.f15150i.f(new a("MTML", str, null, i10, null), arrayList);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i() {
        if (o4.a.d(ModelManager.class)) {
            return;
        }
        try {
            e.b();
        } catch (Throwable th2) {
            o4.a.b(th2, ModelManager.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j() {
        if (o4.a.d(ModelManager.class)) {
            return;
        }
        try {
            c.a();
        } catch (Throwable th2) {
            o4.a.b(th2, ModelManager.class);
        }
    }

    private final JSONObject k() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            Bundle bundle = new Bundle();
            bundle.putString("fields", TextUtils.join(",", new String[]{"use_case", "version_id", "asset_uri", "rules_uri", "thresholds"}));
            GraphRequest x10 = GraphRequest.f14841n.x(null, "app/model_asset", null);
            x10.H(bundle);
            JSONObject c10 = x10.k().c();
            if (c10 == null) {
                return null;
            }
            return p(c10);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @Nullable
    public static final File l(@NotNull Task task) {
        if (o4.a.d(ModelManager.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(task, "task");
            a aVar = f15147b.get(task.toUseCase());
            if (aVar == null) {
                return null;
            }
            return aVar.d();
        } catch (Throwable th2) {
            o4.a.b(th2, ModelManager.class);
            return null;
        }
    }

    private final boolean m() {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            Locale O = u0.O();
            if (O != null) {
                String language = O.getLanguage();
                Intrinsics.checkNotNullExpressionValue(language, "locale.language");
                if (!StringsKt.b0(language, "en", false, 2, null)) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    private final boolean n(long j10) {
        if (o4.a.d(this) || j10 == 0) {
            return false;
        }
        try {
            if (System.currentTimeMillis() - j10 >= 259200000) {
                return false;
            }
            return true;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    private final float[] o(JSONArray jSONArray) {
        if (o4.a.d(this) || jSONArray == null) {
            return null;
        }
        try {
            float[] fArr = new float[jSONArray.length()];
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                try {
                    String string = jSONArray.getString(i10);
                    Intrinsics.checkNotNullExpressionValue(string, "jsonArray.getString(i)");
                    fArr[i10] = Float.parseFloat(string);
                } catch (JSONException unused) {
                }
            }
            return fArr;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final JSONObject p(JSONObject jSONObject) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                JSONArray jSONArray = jSONObject.getJSONArray("data");
                int length = jSONArray.length();
                for (int i10 = 0; i10 < length; i10++) {
                    JSONObject jSONObject3 = jSONArray.getJSONObject(i10);
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put("version_id", jSONObject3.getString("version_id"));
                    jSONObject4.put("use_case", jSONObject3.getString("use_case"));
                    jSONObject4.put("thresholds", jSONObject3.getJSONArray("thresholds"));
                    jSONObject4.put("asset_uri", jSONObject3.getString("asset_uri"));
                    if (jSONObject3.has("rules_uri")) {
                        jSONObject4.put("rules_uri", jSONObject3.getString("rules_uri"));
                    }
                    jSONObject2.put(jSONObject3.getString("use_case"), jSONObject4);
                }
                return jSONObject2;
            } catch (JSONException unused) {
                return new JSONObject();
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @Nullable
    public static final String[] q(@NotNull Task task, @NotNull float[][] denses, @NotNull String[] texts) {
        com.facebook.appevents.ml.a c10;
        if (o4.a.d(ModelManager.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(task, "task");
            Intrinsics.checkNotNullParameter(denses, "denses");
            Intrinsics.checkNotNullParameter(texts, "texts");
            a aVar = f15147b.get(task.toUseCase());
            if (aVar != null && (c10 = aVar.c()) != null) {
                float[] f10 = aVar.f();
                int length = texts.length;
                int length2 = denses[0].length;
                b2.a aVar2 = new b2.a(new int[]{length, length2});
                for (int i10 = 0; i10 < length; i10++) {
                    System.arraycopy(denses[i10], 0, aVar2.a(), i10 * length2, length2);
                }
                b2.a b10 = c10.b(aVar2, texts, task.toKey());
                if (b10 != null && f10 != null && b10.a().length != 0 && f10.length != 0) {
                    int i11 = b.$EnumSwitchMapping$0[task.ordinal()];
                    if (i11 != 1) {
                        if (i11 == 2) {
                            return f15146a.r(b10, f10);
                        }
                        throw new NoWhenBranchMatchedException();
                    }
                    return f15146a.s(b10, f10);
                }
                return null;
            }
            return null;
        } catch (Throwable th2) {
            o4.a.b(th2, ModelManager.class);
            return null;
        }
    }

    private final String[] r(b2.a aVar, float[] fArr) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            int b10 = aVar.b(0);
            int b11 = aVar.b(1);
            float[] a10 = aVar.a();
            if (b11 != fArr.length) {
                return null;
            }
            IntRange v10 = kotlin.ranges.e.v(0, b10);
            ArrayList arrayList = new ArrayList(CollectionsKt.z(v10, 10));
            Iterator<Integer> it = v10.iterator();
            while (it.hasNext()) {
                int nextInt = ((m0) it).nextInt();
                String str = DevicePublicKeyStringDef.NONE;
                int length = fArr.length;
                int i10 = 0;
                int i11 = 0;
                while (i10 < length) {
                    int i12 = i11 + 1;
                    if (a10[(nextInt * b11) + i11] >= fArr[i10]) {
                        str = f15149d.get(i11);
                    }
                    i10++;
                    i11 = i12;
                }
                arrayList.add(str);
            }
            return (String[]) arrayList.toArray(new String[0]);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private final String[] s(b2.a aVar, float[] fArr) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            int b10 = aVar.b(0);
            int b11 = aVar.b(1);
            float[] a10 = aVar.a();
            if (b11 != fArr.length) {
                return null;
            }
            IntRange v10 = kotlin.ranges.e.v(0, b10);
            ArrayList arrayList = new ArrayList(CollectionsKt.z(v10, 10));
            Iterator<Integer> it = v10.iterator();
            while (it.hasNext()) {
                int nextInt = ((m0) it).nextInt();
                String str = "other";
                int length = fArr.length;
                int i10 = 0;
                int i11 = 0;
                while (i10 < length) {
                    int i12 = i11 + 1;
                    if (a10[(nextInt * b11) + i11] >= fArr[i10]) {
                        str = f15148c.get(i11);
                    }
                    i10++;
                    i11 = i12;
                }
                arrayList.add(str);
            }
            return (String[]) arrayList.toArray(new String[0]);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }
}
