package t1;

import com.facebook.appevents.codeless.internal.PathComponent;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: ParameterComponent.kt */
@Metadata
/* loaded from: classes3.dex */
public final class a {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final C0925a f66803e = new C0925a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f66804a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f66805b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final List<PathComponent> f66806c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final String f66807d;

    /* compiled from: ParameterComponent.kt */
    @Metadata
    /* renamed from: t1.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0925a {
        public /* synthetic */ C0925a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0925a() {
        }
    }

    public a(@NotNull JSONObject component) {
        Intrinsics.checkNotNullParameter(component, "component");
        String string = component.getString("name");
        Intrinsics.checkNotNullExpressionValue(string, "component.getString(PARAMETER_NAME_KEY)");
        this.f66804a = string;
        String optString = component.optString(AppMeasurementSdk.ConditionalUserProperty.VALUE);
        Intrinsics.checkNotNullExpressionValue(optString, "component.optString(PARAMETER_VALUE_KEY)");
        this.f66805b = optString;
        String optString2 = component.optString("path_type", "absolute");
        Intrinsics.checkNotNullExpressionValue(optString2, "component.optString(Cons…tants.PATH_TYPE_ABSOLUTE)");
        this.f66807d = optString2;
        ArrayList arrayList = new ArrayList();
        JSONArray optJSONArray = component.optJSONArray(MBridgeConstans.DYNAMIC_VIEW_WX_PATH);
        if (optJSONArray != null) {
            int length = optJSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject jSONObject = optJSONArray.getJSONObject(i10);
                Intrinsics.checkNotNullExpressionValue(jSONObject, "jsonPathArray.getJSONObject(i)");
                arrayList.add(new PathComponent(jSONObject));
            }
        }
        this.f66806c = arrayList;
    }

    @NotNull
    public final String a() {
        return this.f66804a;
    }

    @NotNull
    public final List<PathComponent> b() {
        return this.f66806c;
    }

    @NotNull
    public final String c() {
        return this.f66807d;
    }

    @NotNull
    public final String d() {
        return this.f66805b;
    }
}
