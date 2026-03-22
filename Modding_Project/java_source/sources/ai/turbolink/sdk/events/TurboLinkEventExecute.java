package ai.turbolink.sdk.events;

import ai.turbolink.sdk.TurboLink;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TurboLinkEventExecute.kt */
@Metadata
/* loaded from: classes.dex */
public interface TurboLinkEventExecute {

    /* compiled from: TurboLinkEventExecute.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        public static void execute(@NotNull TurboLinkEventExecute turboLinkEventExecute, @NotNull TurboLink turboLink, @NotNull TurboLinkEvent turboLinkEvent) {
            Intrinsics.checkNotNullParameter(turboLink, "turboLink");
            Intrinsics.checkNotNullParameter(turboLinkEvent, "turboLinkEvent");
        }
    }

    void execute(@NotNull TurboLink turboLink, @NotNull TurboLinkEvent turboLinkEvent);
}
