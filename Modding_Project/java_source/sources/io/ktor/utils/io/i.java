package io.ktor.utils.io;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: CloseElement.kt */
@Metadata
/* loaded from: classes8.dex */
public final class i {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Throwable f59515a;

    public i(@Nullable Throwable th2) {
        this.f59515a = th2;
    }

    @Nullable
    public final Throwable a() {
        return this.f59515a;
    }
}
