package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.repository.SessionRepository;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: CommonTokenNumberProvider.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CommonTokenNumberProvider implements TokenNumberProvider {
    @NotNull
    private final i number$delegate;

    public CommonTokenNumberProvider(@NotNull final SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.number$delegate = c.b(new Function0<Integer>() { // from class: com.unity3d.ads.core.domain.CommonTokenNumberProvider$number$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(SessionRepository.this.getHeaderBiddingTokenCounter());
            }
        });
    }

    private final int getNumber() {
        return ((Number) this.number$delegate.getValue()).intValue();
    }

    @Override // com.unity3d.ads.core.domain.TokenNumberProvider
    public int invoke() {
        return getNumber();
    }
}
