package com.bytedance.bdtracker;

import com.bytedance.bdtracker.p;
import com.bytedance.vodsetting.Module;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Metadata
/* loaded from: classes3.dex */
public final class m<T extends p> {

    /* renamed from: c  reason: collision with root package name */
    public static final a f12207c = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public String f12208a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public T f12209b;

    @Nullable
    public final T a() {
        return this.f12209b;
    }

    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
        }

        @NotNull
        public final <T extends p> m<T> a(@Nullable String str, @NotNull Class<T> clazz) {
            Intrinsics.checkParameterIsNotNull(clazz, "clazz");
            JSONObject jSONObject = new JSONObject(str);
            m<T> mVar = new m<>();
            jSONObject.optInt(Module.ResponseKey.Code);
            mVar.f12208a = jSONObject.optString("message");
            mVar.f12209b = (T) p.f12300a.a(jSONObject.optJSONObject("data"), clazz);
            return mVar;
        }

        @NotNull
        public final <T extends p> m<T> a(@NotNull Throwable throwable) {
            String str;
            Intrinsics.checkParameterIsNotNull(throwable, "throwable");
            m<T> mVar = new m<>();
            if (throwable instanceof d3) {
                str = "DDL request timeout";
            } else {
                str = throwable + " message:" + throwable.getMessage();
            }
            mVar.f12208a = str;
            return mVar;
        }
    }
}
