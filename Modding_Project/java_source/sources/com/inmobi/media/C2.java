package com.inmobi.media;

import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public abstract class C2 {
    public static final Object a(Function0 block) {
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            Result.a aVar = Result.f60901b;
            return Result.d(block.invoke());
        } catch (Error e10) {
            Result.a aVar2 = Result.f60901b;
            return Result.d(kotlin.f.a(e10));
        } catch (Exception e11) {
            Result.a aVar3 = Result.f60901b;
            return Result.d(kotlin.f.a(e11));
        }
    }
}
