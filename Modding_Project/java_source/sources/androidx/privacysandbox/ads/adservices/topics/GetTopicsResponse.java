package androidx.privacysandbox.ads.adservices.topics;

import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GetTopicsResponse.kt */
@Metadata
/* loaded from: classes2.dex */
public final class GetTopicsResponse {
    @NotNull
    private final List<EncryptedTopic> encryptedTopics;
    @NotNull
    private final List<Topic> topics;

    @ExperimentalFeatures.Ext11OptIn
    public GetTopicsResponse(@NotNull List<Topic> topics, @NotNull List<EncryptedTopic> encryptedTopics) {
        Intrinsics.checkNotNullParameter(topics, "topics");
        Intrinsics.checkNotNullParameter(encryptedTopics, "encryptedTopics");
        this.topics = topics;
        this.encryptedTopics = encryptedTopics;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GetTopicsResponse)) {
            return false;
        }
        GetTopicsResponse getTopicsResponse = (GetTopicsResponse) obj;
        if (this.topics.size() != getTopicsResponse.topics.size() || this.encryptedTopics.size() != getTopicsResponse.encryptedTopics.size()) {
            return false;
        }
        if (Intrinsics.areEqual(new HashSet(this.topics), new HashSet(getTopicsResponse.topics)) && Intrinsics.areEqual(new HashSet(this.encryptedTopics), new HashSet(getTopicsResponse.encryptedTopics))) {
            return true;
        }
        return false;
    }

    @NotNull
    public final List<EncryptedTopic> getEncryptedTopics() {
        return this.encryptedTopics;
    }

    @NotNull
    public final List<Topic> getTopics() {
        return this.topics;
    }

    public int hashCode() {
        return Objects.hash(this.topics, this.encryptedTopics);
    }

    @NotNull
    public String toString() {
        return "GetTopicsResponse: Topics=" + this.topics + ", EncryptedTopics=" + this.encryptedTopics;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GetTopicsResponse(@NotNull List<Topic> topics) {
        this(topics, CollectionsKt.n());
        Intrinsics.checkNotNullParameter(topics, "topics");
    }
}
