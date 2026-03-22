package com.unity3d.ads.core.data.datasource;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.f;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidFIdExistenceDataSource.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidFIdExistenceDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidFIdExistenceDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidFIdExistenceDataSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,8:1\n1#2:9\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidFIdExistenceDataSource implements FIdExistenceDataSource {
    @NotNull
    private final String className;

    public AndroidFIdExistenceDataSource(@NotNull String className) {
        Intrinsics.checkNotNullParameter(className, "className");
        this.className = className;
    }

    @Override // com.unity3d.ads.core.data.datasource.FIdExistenceDataSource
    public boolean invoke() {
        Object d10;
        try {
            Result.a aVar = Result.f60901b;
            d10 = Result.d(Class.forName(this.className));
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(f.a(th2));
        }
        return Result.j(d10);
    }
}
