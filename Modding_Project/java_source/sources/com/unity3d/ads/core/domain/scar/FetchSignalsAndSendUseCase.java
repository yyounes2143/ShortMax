package com.unity3d.ads.core.domain.scar;

import com.google.protobuf.ByteString;
import com.unity3d.ads.TokenConfiguration;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: FetchSignalsAndSendUseCase.kt */
@Metadata
/* loaded from: classes7.dex */
public interface FetchSignalsAndSendUseCase {
    @Nullable
    Object invoke(int i10, @NotNull ByteString byteString, @Nullable TokenConfiguration tokenConfiguration, @NotNull c<? super Unit> cVar);
}
