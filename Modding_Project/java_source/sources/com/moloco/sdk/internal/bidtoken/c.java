package com.moloco.sdk.internal.bidtoken;

import android.util.Base64;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.internal.g0;
import com.moloco.sdk.internal.q;
import gt.e;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class c implements b {

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.bidtoken.VersionPrefixedJWTokenParser$invoke$2", f = "VersionPrefixedJWTokenParser.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.internal.bidtoken.a, q>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f32022h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ String f32023i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f32023i = str;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.internal.bidtoken.a, q>> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f32023i, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f32022h == 0) {
                f.b(obj);
                try {
                    byte[] decode = Base64.decode((String) StringsKt.split$default((String) StringsKt.Y0(this.f32023i, new char[]{':'}, false, 0, 6, null).get(1), new String[]{"."}, false, 0, 6, null).get(1), 0);
                    Intrinsics.checkNotNullExpressionValue(decode, "decode(...)");
                    return new g0.b(new com.moloco.sdk.internal.bidtoken.a(new JSONObject(StringsKt.C(decode)).getLong("exp")));
                } catch (Exception e10) {
                    return new g0.a(new q(e10.toString(), -1));
                }
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // com.moloco.sdk.internal.bidtoken.b
    @Nullable
    public Object b(@NotNull String str, @NotNull rs.c<? super com.moloco.sdk.internal.g0<com.moloco.sdk.internal.bidtoken.a, q>> cVar) {
        CoroutineContext coroutineContext;
        coroutineContext = d.f32024a;
        return e.g(coroutineContext, new a(str, null), cVar);
    }
}
