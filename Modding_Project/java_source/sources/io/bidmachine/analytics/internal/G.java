package io.bidmachine.analytics.internal;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Iterator;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.Sequence;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.coroutines.r;
/* loaded from: classes7.dex */
public final class G {

    /* renamed from: a  reason: collision with root package name */
    private final J f53953a;

    /* renamed from: b  reason: collision with root package name */
    private final K f53954b;

    /* renamed from: c  reason: collision with root package name */
    private final gt.g0 f53955c;

    /* renamed from: d  reason: collision with root package name */
    private kotlinx.coroutines.r f53956d;

    /* loaded from: classes7.dex */
    public interface a {
        G a();
    }

    /* loaded from: classes7.dex */
    static final class b extends SuspendLambda implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f53957a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f53958b;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f53960d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, rs.c cVar) {
            super(2, cVar);
            this.f53960d = str;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c create(Object obj, rs.c cVar) {
            b bVar = new b(this.f53960d, cVar);
            bVar.f53958b = obj;
            return bVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            BufferedReader bufferedReader;
            kotlin.coroutines.intrinsics.a.f();
            if (this.f53957a == 0) {
                kotlin.f.b(obj);
                gt.g0 g0Var = (gt.g0) this.f53958b;
                K k10 = G.this.f53954b;
                G g10 = G.this;
                String str = this.f53960d;
                synchronized (k10) {
                    try {
                        Result.a aVar = Result.f60901b;
                        InputStream a10 = g10.f53954b.a(StringsKt.split$default(s0.b(str), new String[]{" "}, false, 0, 6, null));
                        Unit unit = null;
                        if (a10 != null) {
                            bufferedReader = new BufferedReader(new InputStreamReader(a10, Charsets.UTF_8), 8192);
                        } else {
                            bufferedReader = null;
                        }
                        if (bufferedReader != null) {
                            g10.a(str, ws.n.e(bufferedReader));
                            Unit unit2 = Unit.f60915a;
                            ws.b.a(bufferedReader, null);
                        }
                        if (bufferedReader != null) {
                            bufferedReader.close();
                            unit = Unit.f60915a;
                        }
                        Result.d(unit);
                    } catch (Throwable th2) {
                        Result.a aVar2 = Result.f60901b;
                        Result.d(kotlin.f.a(th2));
                    }
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public G(J j10, K k10, gt.g0 g0Var) {
        this.f53953a = j10;
        this.f53954b = k10;
        this.f53955c = g0Var;
    }

    private final boolean b() {
        kotlinx.coroutines.r rVar = this.f53956d;
        if (rVar != null && rVar.isActive()) {
            return true;
        }
        return false;
    }

    public final void a(String str) {
        kotlinx.coroutines.r d10;
        kotlinx.coroutines.r rVar = this.f53956d;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        d10 = gt.g.d(this.f53955c, null, null, new b(str, null), 3, null);
        this.f53956d = d10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str, Sequence sequence) {
        Iterator it = sequence.iterator();
        while (b() && it.hasNext()) {
            this.f53953a.a(str, (String) it.next());
        }
    }

    public final void a() {
        kotlinx.coroutines.r rVar = this.f53956d;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        this.f53956d = null;
        synchronized (this.f53954b) {
            try {
                Result.a aVar = Result.f60901b;
                this.f53954b.a();
                Result.d(Unit.f60915a);
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                Result.d(kotlin.f.a(th2));
            }
        }
    }
}
