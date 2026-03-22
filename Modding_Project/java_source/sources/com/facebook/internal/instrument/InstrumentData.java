package com.facebook.internal.instrument;

import android.os.Build;
import androidx.annotation.RestrictTo;
import com.facebook.internal.u0;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import l4.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: InstrumentData.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class InstrumentData {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final b f16215h = new b(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private String f16216a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private Type f16217b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private JSONArray f16218c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private String f16219d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f16220e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private String f16221f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Long f16222g;

    /* compiled from: InstrumentData.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum Type {
        Unknown,
        Analysis,
        AnrReport,
        CrashReport,
        CrashShield,
        ThreadCheck;

        /* compiled from: InstrumentData.kt */
        @Metadata
        /* loaded from: classes3.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Type.values().length];
                try {
                    iArr[Type.Analysis.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Type.AnrReport.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[Type.CrashReport.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[Type.CrashShield.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[Type.ThreadCheck.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        @NotNull
        public final String getLogPrefix() {
            int i10 = a.$EnumSwitchMapping$0[ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 5) {
                                return "Unknown";
                            }
                            return "thread_check_log_";
                        }
                        return "shield_log_";
                    }
                    return "crash_log_";
                }
                return "anr_log_";
            }
            return "analysis_log_";
        }

        @Override // java.lang.Enum
        @NotNull
        public String toString() {
            int i10 = a.$EnumSwitchMapping$0[ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 5) {
                                return "Unknown";
                            }
                            return "ThreadCheck";
                        }
                        return "CrashShield";
                    }
                    return "CrashReport";
                }
                return "AnrReport";
            }
            return "Analysis";
        }
    }

    /* compiled from: InstrumentData.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f16223a = new a();

        private a() {
        }

        @NotNull
        public static final InstrumentData a(@Nullable String str, @Nullable String str2) {
            return new InstrumentData(str, str2, (DefaultConstructorMarker) null);
        }

        @NotNull
        public static final InstrumentData b(@Nullable Throwable th2, @NotNull Type t10) {
            Intrinsics.checkNotNullParameter(t10, "t");
            return new InstrumentData(th2, t10, (DefaultConstructorMarker) null);
        }

        @NotNull
        public static final InstrumentData c(@NotNull JSONArray features) {
            Intrinsics.checkNotNullParameter(features, "features");
            return new InstrumentData(features, (DefaultConstructorMarker) null);
        }

        @NotNull
        public static final InstrumentData d(@NotNull File file) {
            Intrinsics.checkNotNullParameter(file, "file");
            return new InstrumentData(file, (DefaultConstructorMarker) null);
        }
    }

    /* compiled from: InstrumentData.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Type b(String str) {
            if (StringsKt.V(str, "crash_log_", false, 2, null)) {
                return Type.CrashReport;
            }
            if (StringsKt.V(str, "shield_log_", false, 2, null)) {
                return Type.CrashShield;
            }
            if (StringsKt.V(str, "thread_check_log_", false, 2, null)) {
                return Type.ThreadCheck;
            }
            if (StringsKt.V(str, "analysis_log_", false, 2, null)) {
                return Type.Analysis;
            }
            if (StringsKt.V(str, "anr_log_", false, 2, null)) {
                return Type.AnrReport;
            }
            return Type.Unknown;
        }

        private b() {
        }
    }

    /* compiled from: InstrumentData.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public /* synthetic */ class c {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Type.values().length];
            try {
                iArr[Type.Analysis.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Type.AnrReport.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Type.CrashReport.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Type.CrashShield.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Type.ThreadCheck.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ InstrumentData(File file, DefaultConstructorMarker defaultConstructorMarker) {
        this(file);
    }

    private final JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONArray jSONArray = this.f16218c;
            if (jSONArray != null) {
                jSONObject.put("feature_names", jSONArray);
            }
            Long l10 = this.f16222g;
            if (l10 != null) {
                jSONObject.put("timestamp", l10);
            }
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    private final JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("device_os_version", Build.VERSION.RELEASE);
            jSONObject.put("device_model", Build.MODEL);
            String str = this.f16219d;
            if (str != null) {
                jSONObject.put("app_version", str);
            }
            Long l10 = this.f16222g;
            if (l10 != null) {
                jSONObject.put("timestamp", l10);
            }
            String str2 = this.f16220e;
            if (str2 != null) {
                jSONObject.put("reason", str2);
            }
            String str3 = this.f16221f;
            if (str3 != null) {
                jSONObject.put("callstack", str3);
            }
            Type type = this.f16217b;
            if (type != null) {
                jSONObject.put("type", type);
            }
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    private final JSONObject e() {
        int i10;
        Type type = this.f16217b;
        if (type == null) {
            i10 = -1;
        } else {
            i10 = c.$EnumSwitchMapping$0[type.ordinal()];
        }
        if (i10 != 1) {
            if (i10 != 2 && i10 != 3 && i10 != 4 && i10 != 5) {
                return null;
            }
            return d();
        }
        return c();
    }

    public final void a() {
        i.d(this.f16216a);
    }

    public final int b(@NotNull InstrumentData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        Long l10 = this.f16222g;
        if (l10 != null) {
            long longValue = l10.longValue();
            Long l11 = data.f16222g;
            if (l11 != null) {
                return Intrinsics.compare(l11.longValue(), longValue);
            }
            return 1;
        }
        return -1;
    }

    public final boolean f() {
        int i10;
        Type type = this.f16217b;
        if (type == null) {
            i10 = -1;
        } else {
            i10 = c.$EnumSwitchMapping$0[type.ordinal()];
        }
        if (i10 != 1) {
            if (i10 != 2) {
                if ((i10 != 3 && i10 != 4 && i10 != 5) || this.f16221f == null || this.f16222g == null) {
                    return false;
                }
            } else if (this.f16221f == null || this.f16220e == null || this.f16222g == null) {
                return false;
            }
        } else if (this.f16218c == null || this.f16222g == null) {
            return false;
        }
        return true;
    }

    public final void g() {
        if (!f()) {
            return;
        }
        i.t(this.f16216a, toString());
    }

    @NotNull
    public String toString() {
        JSONObject e10 = e();
        if (e10 == null) {
            String jSONObject = new JSONObject().toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject, "JSONObject().toString()");
            return jSONObject;
        }
        String jSONObject2 = e10.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject2, "params.toString()");
        return jSONObject2;
    }

    public /* synthetic */ InstrumentData(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2);
    }

    public /* synthetic */ InstrumentData(Throwable th2, Type type, DefaultConstructorMarker defaultConstructorMarker) {
        this(th2, type);
    }

    public /* synthetic */ InstrumentData(JSONArray jSONArray, DefaultConstructorMarker defaultConstructorMarker) {
        this(jSONArray);
    }

    private InstrumentData(JSONArray jSONArray) {
        this.f16217b = Type.Analysis;
        this.f16222g = Long.valueOf(System.currentTimeMillis() / 1000);
        this.f16218c = jSONArray;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("analysis_log_");
        stringBuffer.append(String.valueOf(this.f16222g));
        stringBuffer.append(".json");
        String stringBuffer2 = stringBuffer.toString();
        Intrinsics.checkNotNullExpressionValue(stringBuffer2, "StringBuffer()\n         …)\n            .toString()");
        this.f16216a = stringBuffer2;
    }

    private InstrumentData(Throwable th2, Type type) {
        this.f16217b = type;
        this.f16219d = u0.w();
        this.f16220e = i.e(th2);
        this.f16221f = i.h(th2);
        this.f16222g = Long.valueOf(System.currentTimeMillis() / 1000);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(type.getLogPrefix());
        stringBuffer.append(String.valueOf(this.f16222g));
        stringBuffer.append(".json");
        String stringBuffer2 = stringBuffer.toString();
        Intrinsics.checkNotNullExpressionValue(stringBuffer2, "StringBuffer().append(t.…ppend(\".json\").toString()");
        this.f16216a = stringBuffer2;
    }

    private InstrumentData(String str, String str2) {
        this.f16217b = Type.AnrReport;
        this.f16219d = u0.w();
        this.f16220e = str;
        this.f16221f = str2;
        this.f16222g = Long.valueOf(System.currentTimeMillis() / 1000);
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("anr_log_");
        stringBuffer.append(String.valueOf(this.f16222g));
        stringBuffer.append(".json");
        String stringBuffer2 = stringBuffer.toString();
        Intrinsics.checkNotNullExpressionValue(stringBuffer2, "StringBuffer()\n         …)\n            .toString()");
        this.f16216a = stringBuffer2;
    }

    private InstrumentData(File file) {
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "file.name");
        this.f16216a = name;
        this.f16217b = f16215h.b(name);
        JSONObject r10 = i.r(this.f16216a, true);
        if (r10 != null) {
            this.f16222g = Long.valueOf(r10.optLong("timestamp", 0L));
            this.f16219d = r10.optString("app_version", null);
            this.f16220e = r10.optString("reason", null);
            this.f16221f = r10.optString("callstack", null);
            this.f16218c = r10.optJSONArray("feature_names");
        }
    }
}
