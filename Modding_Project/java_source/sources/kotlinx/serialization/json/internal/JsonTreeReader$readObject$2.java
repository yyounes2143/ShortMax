package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: JsonTreeReader.kt */
@Metadata
@d(c = "kotlinx.serialization.json.internal.JsonTreeReader", f = "JsonTreeReader.kt", l = {24}, m = "readObject")
/* loaded from: classes8.dex */
public final class JsonTreeReader$readObject$2 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f61998h;

    /* renamed from: i  reason: collision with root package name */
    Object f61999i;

    /* renamed from: j  reason: collision with root package name */
    Object f62000j;

    /* renamed from: k  reason: collision with root package name */
    Object f62001k;

    /* renamed from: l  reason: collision with root package name */
    /* synthetic */ Object f62002l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ JsonTreeReader f62003m;

    /* renamed from: n  reason: collision with root package name */
    int f62004n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeReader$readObject$2(JsonTreeReader jsonTreeReader, c<? super JsonTreeReader$readObject$2> cVar) {
        super(cVar);
        this.f62003m = jsonTreeReader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object h10;
        this.f62002l = obj;
        this.f62004n |= Integer.MIN_VALUE;
        h10 = this.f62003m.h(null, this);
        return h10;
    }
}
