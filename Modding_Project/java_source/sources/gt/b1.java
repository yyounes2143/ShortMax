package gt;

import gt.b1;
import java.io.Closeable;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Executors.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class b1 extends c0 implements Closeable, AutoCloseable {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f52527a = new a(null);

    /* compiled from: Executors.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a extends kotlin.coroutines.b<c0, b1> {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final b1 d(CoroutineContext.Element element) {
            if (element instanceof b1) {
                return (b1) element;
            }
            return null;
        }

        private a() {
            super(c0.Key, new Function1() { // from class: gt.a1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    b1 d10;
                    d10 = b1.a.d((CoroutineContext.Element) obj);
                    return d10;
                }
            });
        }
    }

    @NotNull
    public abstract Executor m();
}
