package com.inmobi.media;

import com.inmobi.commons.utils.json.Constructor;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes5.dex */
public final class U6 extends Dc {

    /* renamed from: b  reason: collision with root package name */
    public final Class f24258b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public U6(@NotNull Constructor<List<Object>> constructor, @NotNull Class<Object> valueClass) {
        super(constructor);
        Intrinsics.checkNotNullParameter(constructor, "constructor");
        Intrinsics.checkNotNullParameter(valueClass, "valueClass");
        this.f24258b = valueClass;
    }

    @NotNull
    public final List<Object> b() {
        return (List) a().construct();
    }

    @NotNull
    public final Class<Object> c() {
        return this.f24258b;
    }
}
