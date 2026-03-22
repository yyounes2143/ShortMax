package kotlin.text;

import java.util.Collection;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.Nullable;
/* compiled from: MatchResult.kt */
@Metadata
/* loaded from: classes8.dex */
public interface g extends Collection<MatchGroup>, KMappedMarker {
    @Nullable
    MatchGroup get(int i10);
}
