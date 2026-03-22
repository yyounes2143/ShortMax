package q1;

import androidx.annotation.RestrictTo;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: MetadataRule.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes3.dex */
public final class d {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f65025d = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final Set<d> f65026e = new CopyOnWriteArraySet();
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f65027a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f65028b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final List<String> f65029c;

    /* compiled from: MetadataRule.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void a(JSONObject jSONObject) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                JSONObject optJSONObject = jSONObject.optJSONObject(key);
                if (optJSONObject != null) {
                    String k10 = optJSONObject.optString(CampaignEx.JSON_KEY_AD_K);
                    String v10 = optJSONObject.optString("v");
                    Intrinsics.checkNotNullExpressionValue(k10, "k");
                    if (k10.length() != 0) {
                        Set a10 = d.a();
                        Intrinsics.checkNotNullExpressionValue(key, "key");
                        List split$default = StringsKt.split$default(k10, new String[]{","}, false, 0, 6, null);
                        Intrinsics.checkNotNullExpressionValue(v10, "v");
                        a10.add(new d(key, split$default, v10, null));
                    }
                }
            }
        }

        @NotNull
        public final Set<String> b() {
            HashSet hashSet = new HashSet();
            for (d dVar : d.a()) {
                hashSet.add(dVar.c());
            }
            return hashSet;
        }

        @NotNull
        public final Set<d> c() {
            return new HashSet(d.a());
        }

        public final void d(@NotNull String rulesFromServer) {
            Intrinsics.checkNotNullParameter(rulesFromServer, "rulesFromServer");
            try {
                d.a().clear();
                a(new JSONObject(rulesFromServer));
            } catch (JSONException unused) {
            }
        }

        private a() {
        }
    }

    public /* synthetic */ d(String str, List list, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, list, str2);
    }

    public static final /* synthetic */ Set a() {
        if (o4.a.d(d.class)) {
            return null;
        }
        try {
            return f65026e;
        } catch (Throwable th2) {
            o4.a.b(th2, d.class);
            return null;
        }
    }

    @NotNull
    public final List<String> b() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            return new ArrayList(this.f65029c);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @NotNull
    public final String c() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            return this.f65027a;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @NotNull
    public final String d() {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            return this.f65028b;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    private d(String str, List<String> list, String str2) {
        this.f65027a = str;
        this.f65028b = str2;
        this.f65029c = list;
    }
}
