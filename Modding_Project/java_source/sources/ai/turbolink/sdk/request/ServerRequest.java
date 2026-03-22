package ai.turbolink.sdk.request;

import ai.turbolink.sdk.events.TurboLinkEvent;
import ai.turbolink.sdk.helpers.AppPrefHelper;
import ai.turbolink.sdk.request.event.EventRequestData;
import ai.turbolink.sdk.utils.TurboLinkUtil;
import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ServerRequest.kt */
@Metadata
/* loaded from: classes.dex */
public abstract class ServerRequest {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String POST_KEY = "REQUEST_POST";
    @NotNull
    private static final String POST_PATH_KEY = "REQUEST_POST_PATH";
    @Nullable
    private AppPrefHelper _appPrefHelper;
    @NotNull
    private final Context _context;
    private int _lastRequestTime;
    @NotNull
    private JSONObject _params;
    @NotNull
    private final ServerRequestPath _requestPath;
    private int _requestTimes;
    @Nullable
    private TurboLinkEvent.TurboLinkEventCallback callback;

    /* compiled from: ServerRequest.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public ServerRequest(@NotNull Context context, @NotNull ServerRequestPath serverRequestPath) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(serverRequestPath, "serverRequestPath");
        this._context = context;
        this._params = new JSONObject();
        this._requestPath = serverRequestPath;
        this._appPrefHelper = AppPrefHelper.Companion.getInstance(context);
        this._requestTimes = 1;
        this._lastRequestTime = (int) (TurboLinkUtil.INSTANCE.getCurrentTimestamp() / 1000);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final TurboLinkEvent.TurboLinkEventCallback getCallback() {
        return this.callback;
    }

    public final int getLastRequestTime() {
        return this._lastRequestTime;
    }

    @NotNull
    public final String getLongUrl() {
        return AppPrefHelper.Companion.getTURBOLINK_BASE_URL_V2() + this._requestPath.getPath();
    }

    @NotNull
    public final JSONObject getPost() {
        return this._params;
    }

    @NotNull
    public abstract EventRequestData getRequestData();

    @NotNull
    public final String getRequestPath() {
        return this._requestPath.getPath();
    }

    public final int getRequestTimes() {
        return this._requestTimes;
    }

    @Nullable
    protected final AppPrefHelper get_appPrefHelper() {
        return this._appPrefHelper;
    }

    public abstract void handleErrors(@NotNull Context context);

    public abstract void handleFailure(int i10, @NotNull String str);

    public abstract void handleSuccess(@NotNull ServerResponse serverResponse);

    public final boolean isPersistable() {
        return true;
    }

    public final void requestTimeIncrease() {
        this._requestTimes++;
        this._lastRequestTime = (int) (TurboLinkUtil.INSTANCE.getCurrentTimestamp() / 1000);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setCallback(@Nullable TurboLinkEvent.TurboLinkEventCallback turboLinkEventCallback) {
        this.callback = turboLinkEventCallback;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setPost(@NotNull JSONObject post) {
        Intrinsics.checkNotNullParameter(post, "post");
        this._params = post;
    }

    protected final void set_appPrefHelper(@Nullable AppPrefHelper appPrefHelper) {
        this._appPrefHelper = appPrefHelper;
    }

    @Nullable
    public final JSONObject toJSON() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(POST_KEY, this._params);
            jSONObject.put(POST_PATH_KEY, this._requestPath.getPath());
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ServerRequest(@NotNull Context context, @NotNull ServerRequestPath serverRequestPath, @NotNull JSONObject post) {
        this(context, serverRequestPath);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(serverRequestPath, "serverRequestPath");
        Intrinsics.checkNotNullParameter(post, "post");
        this._params = post;
    }
}
