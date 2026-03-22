package com.facebook.appevents.codeless.internal;

import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.json.JSONObject;
/* compiled from: PathComponent.kt */
@Metadata
/* loaded from: classes3.dex */
public final class PathComponent {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final a f14984i = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f14985a;

    /* renamed from: b  reason: collision with root package name */
    private final int f14986b;

    /* renamed from: c  reason: collision with root package name */
    private final int f14987c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final String f14988d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final String f14989e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final String f14990f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final String f14991g;

    /* renamed from: h  reason: collision with root package name */
    private final int f14992h;

    /* compiled from: PathComponent.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public enum MatchBitmaskType {
        ID(1),
        TEXT(2),
        TAG(4),
        DESCRIPTION(8),
        HINT(16);
        
        private final int value;

        MatchBitmaskType(int i10) {
            this.value = i10;
        }

        public final int getValue() {
            return this.value;
        }
    }

    /* compiled from: PathComponent.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public PathComponent(@NotNull JSONObject component) {
        Intrinsics.checkNotNullParameter(component, "component");
        String string = component.getString("class_name");
        Intrinsics.checkNotNullExpressionValue(string, "component.getString(PATH_CLASS_NAME_KEY)");
        this.f14985a = string;
        this.f14986b = component.optInt(TextureRenderKeys.KEY_IS_INDEX, -1);
        this.f14987c = component.optInt("id");
        String optString = component.optString(MimeTypes.BASE_TYPE_TEXT);
        Intrinsics.checkNotNullExpressionValue(optString, "component.optString(PATH_TEXT_KEY)");
        this.f14988d = optString;
        String optString2 = component.optString(ITTVideoEngineEventSource.KEY_TAG);
        Intrinsics.checkNotNullExpressionValue(optString2, "component.optString(PATH_TAG_KEY)");
        this.f14989e = optString2;
        String optString3 = component.optString(InMobiNetworkValues.DESCRIPTION);
        Intrinsics.checkNotNullExpressionValue(optString3, "component.optString(PATH_DESCRIPTION_KEY)");
        this.f14990f = optString3;
        String optString4 = component.optString("hint");
        Intrinsics.checkNotNullExpressionValue(optString4, "component.optString(PATH_HINT_KEY)");
        this.f14991g = optString4;
        this.f14992h = component.optInt("match_bitmask");
    }

    @NotNull
    public final String a() {
        return this.f14985a;
    }

    @NotNull
    public final String b() {
        return this.f14990f;
    }

    @NotNull
    public final String c() {
        return this.f14991g;
    }

    public final int d() {
        return this.f14987c;
    }

    public final int e() {
        return this.f14986b;
    }

    public final int f() {
        return this.f14992h;
    }

    @NotNull
    public final String g() {
        return this.f14989e;
    }

    @NotNull
    public final String h() {
        return this.f14988d;
    }
}
