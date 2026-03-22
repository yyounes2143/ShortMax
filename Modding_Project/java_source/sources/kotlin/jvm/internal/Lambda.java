package kotlin.jvm.internal;

import java.io.Serializable;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Lambda.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class Lambda<R> implements FunctionBase<R>, Serializable {
    private final int arity;

    public Lambda(int i10) {
        this.arity = i10;
    }

    @Override // kotlin.jvm.internal.FunctionBase
    public int getArity() {
        return this.arity;
    }

    @NotNull
    public String toString() {
        String renderLambdaToString = Reflection.renderLambdaToString((Lambda) this);
        Intrinsics.checkNotNullExpressionValue(renderLambdaToString, "renderLambdaToString(...)");
        return renderLambdaToString;
    }
}
