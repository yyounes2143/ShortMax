package p4;

import androidx.annotation.RestrictTo;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import l4.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ErrorReportData.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class a {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final C0895a f64507d = new C0895a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private String f64508a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private String f64509b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Long f64510c;

    /* compiled from: ErrorReportData.kt */
    @Metadata
    /* renamed from: p4.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0895a {
        public /* synthetic */ C0895a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0895a() {
        }
    }

    public a(@Nullable String str) {
        this.f64510c = Long.valueOf(System.currentTimeMillis() / 1000);
        this.f64509b = str;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("error_log_");
        Long l10 = this.f64510c;
        Intrinsics.checkNotNull(l10, "null cannot be cast to non-null type kotlin.Long");
        stringBuffer.append(l10.longValue());
        stringBuffer.append(".json");
        String stringBuffer2 = stringBuffer.toString();
        Intrinsics.checkNotNullExpressionValue(stringBuffer2, "StringBuffer()\n         …)\n            .toString()");
        this.f64508a = stringBuffer2;
    }

    public final void a() {
        i.d(this.f64508a);
    }

    public final int b(@NotNull a data) {
        Intrinsics.checkNotNullParameter(data, "data");
        Long l10 = this.f64510c;
        if (l10 != null) {
            long longValue = l10.longValue();
            Long l11 = data.f64510c;
            if (l11 != null) {
                return Intrinsics.compare(l11.longValue(), longValue);
            }
            return 1;
        }
        return -1;
    }

    @Nullable
    public final JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            Long l10 = this.f64510c;
            if (l10 != null) {
                jSONObject.put("timestamp", l10);
            }
            jSONObject.put("error_message", this.f64509b);
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    public final boolean d() {
        if (this.f64509b != null && this.f64510c != null) {
            return true;
        }
        return false;
    }

    public final void e() {
        if (d()) {
            i.t(this.f64508a, toString());
        }
    }

    @NotNull
    public String toString() {
        JSONObject c10 = c();
        if (c10 == null) {
            return super.toString();
        }
        String jSONObject = c10.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject, "params.toString()");
        return jSONObject;
    }

    public a(@NotNull File file) {
        Intrinsics.checkNotNullParameter(file, "file");
        String name = file.getName();
        Intrinsics.checkNotNullExpressionValue(name, "file.name");
        this.f64508a = name;
        JSONObject r10 = i.r(name, true);
        if (r10 != null) {
            this.f64510c = Long.valueOf(r10.optLong("timestamp", 0L));
            this.f64509b = r10.optString("error_message", null);
        }
    }
}
