package com.facebook.appevents.codeless.internal;

import com.mbridge.msdk.MBridgeConstans;
import com.ss.texturerender.effect.ICEffect.ICEffectKeys;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: EventBinding.kt */
@Metadata
/* loaded from: classes3.dex */
public final class EventBinding {
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final a f14974j = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f14975a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final MappingMethod f14976b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final ActionType f14977c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final String f14978d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final List<PathComponent> f14979e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final List<t1.a> f14980f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final String f14981g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final String f14982h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final String f14983i;

    /* compiled from: EventBinding.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum ActionType {
        CLICK,
        SELECTED,
        TEXT_CHANGED
    }

    /* compiled from: EventBinding.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum MappingMethod {
        MANUAL,
        INFERENCE
    }

    /* compiled from: EventBinding.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final EventBinding a(@NotNull JSONObject mapping) throws JSONException, IllegalArgumentException {
            Intrinsics.checkNotNullParameter(mapping, "mapping");
            String eventName = mapping.getString("event_name");
            String string = mapping.getString("method");
            Intrinsics.checkNotNullExpressionValue(string, "mapping.getString(\"method\")");
            Locale ENGLISH = Locale.ENGLISH;
            Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
            String upperCase = string.toUpperCase(ENGLISH);
            Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
            MappingMethod valueOf = MappingMethod.valueOf(upperCase);
            String string2 = mapping.getString(ICEffectKeys.KEY_IS_IC_EFFECT_EVENT_TYPE);
            Intrinsics.checkNotNullExpressionValue(string2, "mapping.getString(\"event_type\")");
            Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
            String upperCase2 = string2.toUpperCase(ENGLISH);
            Intrinsics.checkNotNullExpressionValue(upperCase2, "this as java.lang.String).toUpperCase(locale)");
            ActionType valueOf2 = ActionType.valueOf(upperCase2);
            String appVersion = mapping.getString("app_version");
            JSONArray jSONArray = mapping.getJSONArray(MBridgeConstans.DYNAMIC_VIEW_WX_PATH);
            ArrayList arrayList = new ArrayList();
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject jsonPath = jSONArray.getJSONObject(i10);
                Intrinsics.checkNotNullExpressionValue(jsonPath, "jsonPath");
                arrayList.add(new PathComponent(jsonPath));
            }
            String pathType = mapping.optString("path_type", "absolute");
            JSONArray optJSONArray = mapping.optJSONArray("parameters");
            ArrayList arrayList2 = new ArrayList();
            if (optJSONArray != null) {
                int length2 = optJSONArray.length();
                for (int i11 = 0; i11 < length2; i11++) {
                    JSONObject jsonParameter = optJSONArray.getJSONObject(i11);
                    Intrinsics.checkNotNullExpressionValue(jsonParameter, "jsonParameter");
                    arrayList2.add(new t1.a(jsonParameter));
                }
            }
            String componentId = mapping.optString("component_id");
            String activityName = mapping.optString("activity_name");
            Intrinsics.checkNotNullExpressionValue(eventName, "eventName");
            Intrinsics.checkNotNullExpressionValue(appVersion, "appVersion");
            Intrinsics.checkNotNullExpressionValue(componentId, "componentId");
            Intrinsics.checkNotNullExpressionValue(pathType, "pathType");
            Intrinsics.checkNotNullExpressionValue(activityName, "activityName");
            return new EventBinding(eventName, valueOf, valueOf2, appVersion, arrayList, arrayList2, componentId, pathType, activityName);
        }

        @NotNull
        public final List<EventBinding> b(@Nullable JSONArray jSONArray) {
            ArrayList arrayList = new ArrayList();
            if (jSONArray != null) {
                try {
                    int length = jSONArray.length();
                    for (int i10 = 0; i10 < length; i10++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(i10);
                        Intrinsics.checkNotNullExpressionValue(jSONObject, "array.getJSONObject(i)");
                        arrayList.add(a(jSONObject));
                    }
                } catch (IllegalArgumentException | JSONException unused) {
                }
            }
            return arrayList;
        }

        private a() {
        }
    }

    public EventBinding(@NotNull String eventName, @NotNull MappingMethod method, @NotNull ActionType type, @NotNull String appVersion, @NotNull List<PathComponent> path, @NotNull List<t1.a> parameters, @NotNull String componentId, @NotNull String pathType, @NotNull String activityName) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(appVersion, "appVersion");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(componentId, "componentId");
        Intrinsics.checkNotNullParameter(pathType, "pathType");
        Intrinsics.checkNotNullParameter(activityName, "activityName");
        this.f14975a = eventName;
        this.f14976b = method;
        this.f14977c = type;
        this.f14978d = appVersion;
        this.f14979e = path;
        this.f14980f = parameters;
        this.f14981g = componentId;
        this.f14982h = pathType;
        this.f14983i = activityName;
    }

    @NotNull
    public final String a() {
        return this.f14983i;
    }

    @NotNull
    public final String b() {
        return this.f14975a;
    }

    @NotNull
    public final List<t1.a> c() {
        List<t1.a> unmodifiableList = Collections.unmodifiableList(this.f14980f);
        Intrinsics.checkNotNullExpressionValue(unmodifiableList, "unmodifiableList(parameters)");
        return unmodifiableList;
    }

    @NotNull
    public final List<PathComponent> d() {
        List<PathComponent> unmodifiableList = Collections.unmodifiableList(this.f14979e);
        Intrinsics.checkNotNullExpressionValue(unmodifiableList, "unmodifiableList(path)");
        return unmodifiableList;
    }
}
