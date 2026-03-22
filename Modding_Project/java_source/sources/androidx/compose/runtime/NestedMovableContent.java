package androidx.compose.runtime;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Recomposer.kt */
@InternalComposeApi
@Metadata
/* loaded from: classes.dex */
public final class NestedMovableContent {
    @NotNull
    private final MovableContentStateReference container;
    @NotNull
    private final MovableContentStateReference content;

    public NestedMovableContent(@NotNull MovableContentStateReference movableContentStateReference, @NotNull MovableContentStateReference movableContentStateReference2) {
        this.content = movableContentStateReference;
        this.container = movableContentStateReference2;
    }

    @NotNull
    public final MovableContentStateReference getContainer() {
        return this.container;
    }

    @NotNull
    public final MovableContentStateReference getContent() {
        return this.content;
    }
}
