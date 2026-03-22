package io.ktor.client.plugins;

import io.ktor.client.plugins.HttpRedirect;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpRedirect.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.HttpRedirect$Plugin", f = "HttpRedirect.kt", l = {113}, m = "handleCall")
/* loaded from: classes8.dex */
public final class HttpRedirect$Plugin$handleCall$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f58988h;

    /* renamed from: i  reason: collision with root package name */
    Object f58989i;

    /* renamed from: j  reason: collision with root package name */
    Object f58990j;

    /* renamed from: k  reason: collision with root package name */
    Object f58991k;

    /* renamed from: l  reason: collision with root package name */
    Object f58992l;

    /* renamed from: m  reason: collision with root package name */
    Object f58993m;

    /* renamed from: n  reason: collision with root package name */
    Object f58994n;

    /* renamed from: o  reason: collision with root package name */
    Object f58995o;

    /* renamed from: p  reason: collision with root package name */
    Object f58996p;

    /* renamed from: q  reason: collision with root package name */
    boolean f58997q;

    /* renamed from: r  reason: collision with root package name */
    /* synthetic */ Object f58998r;

    /* renamed from: s  reason: collision with root package name */
    final /* synthetic */ HttpRedirect.Plugin f58999s;

    /* renamed from: t  reason: collision with root package name */
    int f59000t;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpRedirect$Plugin$handleCall$1(HttpRedirect.Plugin plugin, rs.c<? super HttpRedirect$Plugin$handleCall$1> cVar) {
        super(cVar);
        this.f58999s = plugin;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object e10;
        this.f58998r = obj;
        this.f59000t |= Integer.MIN_VALUE;
        e10 = this.f58999s.e(null, null, null, false, null, this);
        return e10;
    }
}
