package kotlin.jvm.internal;

import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.reflect.KDeclarationContainer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: localVariableReferences.kt */
@Metadata
/* loaded from: classes8.dex */
public class LocalVariableReference extends PropertyReference0 {
    @Override // kotlin.reflect.KProperty0
    @Nullable
    public Object get() {
        LocalVariableReferencesKt.notSupportedError();
        throw new KotlinNothingValueException();
    }

    @Override // kotlin.jvm.internal.CallableReference
    @NotNull
    public KDeclarationContainer getOwner() {
        LocalVariableReferencesKt.notSupportedError();
        throw new KotlinNothingValueException();
    }
}
