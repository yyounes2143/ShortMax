package j9;

import android.content.Context;
import android.os.Process;
import j9.s;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProcessDataManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nProcessDataManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProcessDataManager.kt\ncom/google/firebase/sessions/ProcessDataManagerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,123:1\n1611#2,9:124\n1863#2:133\n1864#2:135\n1620#2:136\n1734#2,3:137\n1#3:134\n1#3:140\n*S KotlinDebug\n*F\n+ 1 ProcessDataManager.kt\ncom/google/firebase/sessions/ProcessDataManagerImpl\n*L\n78#1:124,9\n78#1:133\n78#1:135\n78#1:136\n83#1:137,3\n78#1:134\n*E\n"})
/* loaded from: classes5.dex */
public final class w implements s {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Context f60339a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final ms.i f60340b;

    /* renamed from: c  reason: collision with root package name */
    private final int f60341c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final ms.i f60342d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final ms.i f60343e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f60344f;

    public w(@NotNull Context appContext, @NotNull final o0 uuidGenerator) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(uuidGenerator, "uuidGenerator");
        this.f60339a = appContext;
        this.f60340b = kotlin.c.b(new Function0() { // from class: j9.t
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String p10;
                p10 = w.p(w.this);
                return p10;
            }
        });
        this.f60341c = Process.myPid();
        this.f60342d = kotlin.c.b(new Function0() { // from class: j9.u
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                String q10;
                q10 = w.q(o0.this);
                return q10;
            }
        });
        this.f60343e = kotlin.c.b(new Function0() { // from class: j9.v
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                y o10;
                o10 = w.o(w.this);
                return o10;
            }
        });
    }

    private final List<y> j() {
        return z.f60351a.a(this.f60339a);
    }

    private final y l() {
        return (y) this.f60343e.getValue();
    }

    private final boolean n(y yVar, com.google.firebase.sessions.h hVar) {
        if (Intrinsics.areEqual(a(), yVar.c())) {
            if (yVar.b() != hVar.a() || !Intrinsics.areEqual(m(), hVar.b())) {
                return true;
            }
        } else if (yVar.b() != hVar.a()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final y o(w wVar) {
        return z.f60351a.b(wVar.f60339a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String p(w wVar) {
        return wVar.l().c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String q(o0 o0Var) {
        String uuid = o0Var.next().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
        return uuid;
    }

    @Override // j9.s
    @NotNull
    public String a() {
        return (String) this.f60340b.getValue();
    }

    @Override // j9.s
    public boolean b(@NotNull Map<String, com.google.firebase.sessions.h> processDataMap) {
        Intrinsics.checkNotNullParameter(processDataMap, "processDataMap");
        com.google.firebase.sessions.h hVar = processDataMap.get(a());
        if (hVar == null || hVar.a() != k() || !Intrinsics.areEqual(hVar.b(), m())) {
            return true;
        }
        return false;
    }

    @Override // j9.s
    public boolean c(@NotNull Map<String, com.google.firebase.sessions.h> processDataMap) {
        Pair pair;
        Intrinsics.checkNotNullParameter(processDataMap, "processDataMap");
        if (this.f60344f) {
            return false;
        }
        ArrayList<Pair> arrayList = new ArrayList();
        for (y yVar : j()) {
            com.google.firebase.sessions.h hVar = processDataMap.get(yVar.c());
            if (hVar != null) {
                pair = new Pair(yVar, hVar);
            } else {
                pair = null;
            }
            if (pair != null) {
                arrayList.add(pair);
            }
        }
        if (!arrayList.isEmpty()) {
            for (Pair pair2 : arrayList) {
                if (!n((y) pair2.b(), (com.google.firebase.sessions.h) pair2.d())) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // j9.s
    @NotNull
    public Map<String, com.google.firebase.sessions.h> d() {
        return s.a.a(this);
    }

    @Override // j9.s
    @NotNull
    public Map<String, com.google.firebase.sessions.h> e(@Nullable Map<String, com.google.firebase.sessions.h> map) {
        Map A;
        if (map != null && (A = kotlin.collections.p0.A(map)) != null) {
            A.put(a(), new com.google.firebase.sessions.h(Process.myPid(), m()));
            Map<String, com.google.firebase.sessions.h> x10 = kotlin.collections.p0.x(A);
            if (x10 != null) {
                return x10;
            }
        }
        return kotlin.collections.p0.f(ms.k.a(a(), new com.google.firebase.sessions.h(Process.myPid(), m())));
    }

    @Override // j9.s
    public void f() {
        this.f60344f = true;
    }

    public int k() {
        return this.f60341c;
    }

    @NotNull
    public String m() {
        return (String) this.f60342d.getValue();
    }
}
