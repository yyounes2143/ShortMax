package kotlin.coroutines.jvm.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.FunctionBase;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContinuationImpl.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class RestrictedSuspendLambda extends RestrictedContinuationImpl implements FunctionBase<Object> {
    private final int arity;

    public RestrictedSuspendLambda(int i10, @Nullable rs.c<Object> cVar) {
        super(cVar);
        this.arity = i10;
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public int getArity() {
        return this.arity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public String toString() {
        if (getCompletion() == null) {
            String renderLambdaToString = Reflection.renderLambdaToString(this);
            Intrinsics.checkNotNullExpressionValue(renderLambdaToString, "renderLambdaToString(...)");
            return renderLambdaToString;
        }
        return super.toString();
    }

    public RestrictedSuspendLambda(int i10) {
        this(i10, null);
    }
}
