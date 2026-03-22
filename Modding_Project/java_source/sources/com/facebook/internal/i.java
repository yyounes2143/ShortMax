package com.facebook.internal;

import com.bytedance.vodsetting.Module;
import com.facebook.FacebookRequestError;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: FacebookRequestErrorClassification.kt */
@Metadata
/* loaded from: classes3.dex */
public final class i {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final a f16201g = new a(null);
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private static i f16202h;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Map<Integer, Set<Integer>> f16203a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Map<Integer, Set<Integer>> f16204b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final Map<Integer, Set<Integer>> f16205c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String f16206d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final String f16207e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final String f16208f;

    /* compiled from: FacebookRequestErrorClassification.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final i c() {
            return new i(null, kotlin.collections.p0.k(ms.k.a(2, null), ms.k.a(4, null), ms.k.a(9, null), ms.k.a(17, null), ms.k.a(341, null)), kotlin.collections.p0.k(ms.k.a(102, null), ms.k.a(190, null), ms.k.a(412, null)), null, null, null);
        }

        private final Map<Integer, Set<Integer>> d(JSONObject jSONObject) {
            int optInt;
            HashSet hashSet;
            JSONArray optJSONArray = jSONObject.optJSONArray("items");
            if (optJSONArray == null || optJSONArray.length() == 0) {
                return null;
            }
            HashMap hashMap = new HashMap();
            int length = optJSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i10);
                if (optJSONObject != null && (optInt = optJSONObject.optInt(Module.ResponseKey.Code)) != 0) {
                    JSONArray optJSONArray2 = optJSONObject.optJSONArray("subcodes");
                    if (optJSONArray2 != null && optJSONArray2.length() > 0) {
                        hashSet = new HashSet();
                        int length2 = optJSONArray2.length();
                        for (int i11 = 0; i11 < length2; i11++) {
                            int optInt2 = optJSONArray2.optInt(i11);
                            if (optInt2 != 0) {
                                hashSet.add(Integer.valueOf(optInt2));
                            }
                        }
                    } else {
                        hashSet = null;
                    }
                    hashMap.put(Integer.valueOf(optInt), hashSet);
                }
            }
            return hashMap;
        }

        @Nullable
        public final i a(@Nullable JSONArray jSONArray) {
            String optString;
            if (jSONArray == null) {
                return null;
            }
            int length = jSONArray.length();
            Map<Integer, Set<Integer>> map = null;
            Map<Integer, Set<Integer>> map2 = null;
            Map<Integer, Set<Integer>> map3 = null;
            String str = null;
            String str2 = null;
            String str3 = null;
            for (int i10 = 0; i10 < length; i10++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                if (optJSONObject != null && (optString = optJSONObject.optString("name")) != null) {
                    if (StringsKt.G(optString, "other", true)) {
                        str = optJSONObject.optString("recovery_message", null);
                        map = d(optJSONObject);
                    } else if (StringsKt.G(optString, "transient", true)) {
                        str2 = optJSONObject.optString("recovery_message", null);
                        map2 = d(optJSONObject);
                    } else if (StringsKt.G(optString, "login_recoverable", true)) {
                        str3 = optJSONObject.optString("recovery_message", null);
                        map3 = d(optJSONObject);
                    }
                }
            }
            return new i(map, map2, map3, str, str2, str3);
        }

        @NotNull
        public final synchronized i b() {
            i iVar;
            try {
                if (i.f16202h == null) {
                    i.f16202h = c();
                }
                iVar = i.f16202h;
                Intrinsics.checkNotNull(iVar, "null cannot be cast to non-null type com.facebook.internal.FacebookRequestErrorClassification");
            } catch (Throwable th2) {
                throw th2;
            }
            return iVar;
        }

        private a() {
        }
    }

    /* compiled from: FacebookRequestErrorClassification.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FacebookRequestError.Category.values().length];
            try {
                iArr[FacebookRequestError.Category.OTHER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FacebookRequestError.Category.LOGIN_RECOVERABLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FacebookRequestError.Category.TRANSIENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public i(@Nullable Map<Integer, ? extends Set<Integer>> map, @Nullable Map<Integer, ? extends Set<Integer>> map2, @Nullable Map<Integer, ? extends Set<Integer>> map3, @Nullable String str, @Nullable String str2, @Nullable String str3) {
        this.f16203a = map;
        this.f16204b = map2;
        this.f16205c = map3;
        this.f16206d = str;
        this.f16207e = str2;
        this.f16208f = str3;
    }

    @NotNull
    public final FacebookRequestError.Category c(int i10, int i11, boolean z10) {
        Set<Integer> set;
        Set<Integer> set2;
        Set<Integer> set3;
        if (z10) {
            return FacebookRequestError.Category.TRANSIENT;
        }
        Map<Integer, Set<Integer>> map = this.f16203a;
        if (map != null && map.containsKey(Integer.valueOf(i10)) && ((set3 = this.f16203a.get(Integer.valueOf(i10))) == null || set3.contains(Integer.valueOf(i11)))) {
            return FacebookRequestError.Category.OTHER;
        }
        Map<Integer, Set<Integer>> map2 = this.f16205c;
        if (map2 != null && map2.containsKey(Integer.valueOf(i10)) && ((set2 = this.f16205c.get(Integer.valueOf(i10))) == null || set2.contains(Integer.valueOf(i11)))) {
            return FacebookRequestError.Category.LOGIN_RECOVERABLE;
        }
        Map<Integer, Set<Integer>> map3 = this.f16204b;
        if (map3 != null && map3.containsKey(Integer.valueOf(i10)) && ((set = this.f16204b.get(Integer.valueOf(i10))) == null || set.contains(Integer.valueOf(i11)))) {
            return FacebookRequestError.Category.TRANSIENT;
        }
        return FacebookRequestError.Category.OTHER;
    }

    @Nullable
    public final String d(@Nullable FacebookRequestError.Category category) {
        int i10;
        if (category == null) {
            i10 = -1;
        } else {
            i10 = b.$EnumSwitchMapping$0[category.ordinal()];
        }
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return null;
                }
                return this.f16207e;
            }
            return this.f16208f;
        }
        return this.f16206d;
    }
}
