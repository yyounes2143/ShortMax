package vr;

import gt.s0;
import io.ktor.util.internal.d;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Events.kt */
@Metadata
@SourceDebugExtension({"SMAP\nEvents.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Events.kt\nio/ktor/events/Events\n+ 2 LockFreeLinkedList.kt\nio/ktor/util/internal/LockFreeLinkedListHead\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,91:1\n785#2,6:92\n785#2,3:98\n788#2,3:102\n1#3:101\n*S KotlinDebug\n*F\n+ 1 Events.kt\nio/ktor/events/Events\n*L\n32#1:92,6\n45#1:98,3\n45#1:102,3\n*E\n"})
/* loaded from: classes8.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final as.b<vr.a<?>, io.ktor.util.internal.b> f69371a = new as.b<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Events.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a extends d implements s0 {
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private final Function1<?, Unit> f69372d;

        @Override // gt.s0
        public void dispose() {
            i();
        }

        @NotNull
        public final Function1<?, Unit> k() {
            return this.f69372d;
        }
    }

    public final <T> void a(@NotNull vr.a<T> definition, T t10) {
        Unit unit;
        Intrinsics.checkNotNullParameter(definition, "definition");
        io.ktor.util.internal.b a10 = this.f69371a.a(definition);
        Throwable th2 = null;
        if (a10 != null) {
            Object e10 = a10.e();
            Intrinsics.checkNotNull(e10, "null cannot be cast to non-null type io.ktor.util.internal.LockFreeLinkedListNode{ io.ktor.util.internal.LockFreeLinkedListKt.Node }");
            Throwable th3 = null;
            for (d dVar = (d) e10; !Intrinsics.areEqual(dVar, a10); dVar = dVar.f()) {
                if (dVar instanceof a) {
                    try {
                        Function1<?, Unit> k10 = ((a) dVar).k();
                        Intrinsics.checkNotNull(k10, "null cannot be cast to non-null type kotlin.Function1<T of io.ktor.events.Events.raise$lambda$2, kotlin.Unit>{ io.ktor.events.EventsKt.EventHandler<T of io.ktor.events.Events.raise$lambda$2> }");
                        ((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(k10, 1)).invoke(t10);
                    } catch (Throwable th4) {
                        if (th3 != null) {
                            ms.d.a(th3, th4);
                            unit = Unit.f60915a;
                        } else {
                            unit = null;
                        }
                        if (unit == null) {
                            th3 = th4;
                        }
                    }
                }
            }
            th2 = th3;
        }
        if (th2 == null) {
            return;
        }
        throw th2;
    }
}
