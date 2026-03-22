package com.unity3d.ads.core.data.repository;

import com.unity3d.services.core.network.domain.CleanupDirectory;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import gt.g0;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidCacheRepository.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.repository.AndroidCacheRepository$clearCache$2", f = "AndroidCacheRepository.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nAndroidCacheRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidCacheRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidCacheRepository$clearCache$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,132:1\n13579#2,2:133\n13579#2,2:135\n*S KotlinDebug\n*F\n+ 1 AndroidCacheRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidCacheRepository$clearCache$2\n*L\n107#1:133,2\n114#1:135,2\n*E\n"})
/* loaded from: classes7.dex */
final class AndroidCacheRepository$clearCache$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    int label;
    final /* synthetic */ AndroidCacheRepository this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidCacheRepository$clearCache$2(AndroidCacheRepository androidCacheRepository, c<? super AndroidCacheRepository$clearCache$2> cVar) {
        super(2, cVar);
        this.this$0 = androidCacheRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidCacheRepository$clearCache$2(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((AndroidCacheRepository$clearCache$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        SessionRepository sessionRepository;
        SessionRepository sessionRepository2;
        CleanupDirectory cleanupDirectory;
        File file;
        SessionRepository sessionRepository3;
        SessionRepository sessionRepository4;
        CleanupDirectory cleanupDirectory2;
        File file2;
        File file3;
        File file4;
        a.f();
        if (this.label == 0) {
            f.b(obj);
            sessionRepository = this.this$0.sessionRepository;
            int i10 = 0;
            if (!sessionRepository.getNativeConfiguration().hasCachedAssetsConfiguration()) {
                file4 = this.this$0.cacheDir;
                File[] listFiles = file4.listFiles();
                if (listFiles == null) {
                    return null;
                }
                int length = listFiles.length;
                while (i10 < length) {
                    listFiles[i10].delete();
                    i10++;
                }
                return Unit.f60915a;
            }
            sessionRepository2 = this.this$0.sessionRepository;
            NativeConfigurationOuterClass.CachedAssetsConfiguration cachedAssetsConfiguration = sessionRepository2.getNativeConfiguration().getCachedAssetsConfiguration();
            cleanupDirectory = this.this$0.cleanupDirectory;
            file = this.this$0.cacheDir;
            cleanupDirectory.invoke(file, cachedAssetsConfiguration.getMaxCachedAssetSizeMb(), cachedAssetsConfiguration.getMaxCachedAssetAgeMs());
            sessionRepository3 = this.this$0.sessionRepository;
            if (!sessionRepository3.getNativeConfiguration().hasCachedWebviewFilesConfiguration()) {
                file3 = this.this$0.webviewCacheDir;
                File[] listFiles2 = file3.listFiles();
                if (listFiles2 == null) {
                    return null;
                }
                int length2 = listFiles2.length;
                while (i10 < length2) {
                    listFiles2[i10].delete();
                    i10++;
                }
                return Unit.f60915a;
            }
            sessionRepository4 = this.this$0.sessionRepository;
            NativeConfigurationOuterClass.CachedAssetsConfiguration cachedWebviewFilesConfiguration = sessionRepository4.getNativeConfiguration().getCachedWebviewFilesConfiguration();
            cleanupDirectory2 = this.this$0.cleanupDirectory;
            file2 = this.this$0.webviewCacheDir;
            cleanupDirectory2.invoke(file2, cachedWebviewFilesConfiguration.getMaxCachedAssetSizeMb(), cachedWebviewFilesConfiguration.getMaxCachedAssetAgeMs());
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
