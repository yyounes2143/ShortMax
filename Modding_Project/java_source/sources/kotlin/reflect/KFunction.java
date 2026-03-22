package kotlin.reflect;

import kotlin.Metadata;
import ms.f;
/* compiled from: KFunction.kt */
@Metadata
/* loaded from: classes8.dex */
public interface KFunction<R> extends KCallable<R>, f<R> {
    boolean isExternal();

    boolean isInfix();

    boolean isInline();

    boolean isOperator();

    @Override // kotlin.reflect.KCallable
    boolean isSuspend();

    /* compiled from: KFunction.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class DefaultImpls {
        public static /* synthetic */ void isExternal$annotations() {
        }

        public static /* synthetic */ void isInfix$annotations() {
        }

        public static /* synthetic */ void isInline$annotations() {
        }

        public static /* synthetic */ void isOperator$annotations() {
        }

        public static /* synthetic */ void isSuspend$annotations() {
        }
    }
}
