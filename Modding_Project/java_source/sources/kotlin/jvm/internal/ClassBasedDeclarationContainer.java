package kotlin.jvm.internal;

import kotlin.Metadata;
import kotlin.reflect.KDeclarationContainer;
import org.jetbrains.annotations.NotNull;
/* compiled from: ClassBasedDeclarationContainer.kt */
@Metadata
/* loaded from: classes8.dex */
public interface ClassBasedDeclarationContainer extends KDeclarationContainer {
    @NotNull
    Class<?> getJClass();
}
