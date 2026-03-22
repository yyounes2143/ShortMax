package com.inmobi.media;

import com.inmobi.commons.utils.json.Constructor;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes5.dex */
public abstract class Dc {

    /* renamed from: a  reason: collision with root package name */
    public Constructor f23597a;

    public Dc(Constructor constructor) {
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        this.f23597a = constructor;
    }

    @NotNull
    public final Constructor<Object> a() {
        return this.f23597a;
    }

    public final void a(@NotNull Constructor<Object> constructor) {
        Intrinsics.checkNotNullParameter(constructor, "<set-?>");
        this.f23597a = constructor;
    }
}
