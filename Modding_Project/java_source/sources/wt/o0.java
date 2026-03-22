package wt;

import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import org.jetbrains.annotations.NotNull;
/* compiled from: TreeJsonEncoder.kt */
@Metadata
/* loaded from: classes8.dex */
final class o0 extends k0 {

    /* renamed from: h  reason: collision with root package name */
    private String f70329h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f70330i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o0(@NotNull kotlinx.serialization.json.a json, @NotNull Function1<? super JsonElement, Unit> nodeConsumer) {
        super(json, nodeConsumer);
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(nodeConsumer, "nodeConsumer");
        this.f70330i = true;
    }

    @Override // wt.k0, wt.e
    @NotNull
    public JsonElement N() {
        return new JsonObject(S());
    }

    @Override // wt.k0, wt.e
    public void R(@NotNull String key, @NotNull JsonElement element) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(element, "element");
        if (this.f70330i) {
            if (element instanceof JsonPrimitive) {
                this.f70329h = ((JsonPrimitive) element).a();
                this.f70330i = false;
                return;
            } else if (!(element instanceof JsonObject)) {
                if (element instanceof JsonArray) {
                    throw b0.d(kotlinx.serialization.json.b.f61948a.getDescriptor());
                }
                throw new NoWhenBranchMatchedException();
            } else {
                throw b0.d(kotlinx.serialization.json.a0.f61943a.getDescriptor());
            }
        }
        Map<String, JsonElement> S = S();
        String str = this.f70329h;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException(ITTVideoEngineEventSource.KEY_TAG);
            str = null;
        }
        S.put(str, element);
        this.f70330i = true;
    }
}
