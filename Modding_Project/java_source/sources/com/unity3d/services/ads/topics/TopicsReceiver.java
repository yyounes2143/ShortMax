package com.unity3d.services.ads.topics;

import android.annotation.SuppressLint;
import android.os.OutcomeReceiver;
import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.webview.WebViewEventCategory;
import com.unity3d.services.core.webview.bridge.IEventSender;
import i.b;
import i.c;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: TopicsReceiver.kt */
@Metadata
@SuppressLint({"NewApi", "MissingPermission"})
@SourceDebugExtension({"SMAP\nTopicsReceiver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopicsReceiver.kt\ncom/unity3d/services/ads/topics/TopicsReceiver\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,36:1\n1855#2,2:37\n*S KotlinDebug\n*F\n+ 1 TopicsReceiver.kt\ncom/unity3d/services/ads/topics/TopicsReceiver\n*L\n17#1:37,2\n*E\n"})
/* loaded from: classes7.dex */
public final class TopicsReceiver implements OutcomeReceiver {
    @NotNull
    private final IEventSender eventSender;

    public TopicsReceiver(@NotNull IEventSender eventSender) {
        Intrinsics.checkNotNullParameter(eventSender, "eventSender");
        this.eventSender = eventSender;
    }

    @NotNull
    public final JSONObject formatTopic(@NotNull c topic) {
        Intrinsics.checkNotNullParameter(topic, "topic");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("taxonomyVersion", topic.b());
        jSONObject.put("modelVersion", topic.a());
        jSONObject.put("topicId", topic.c());
        return jSONObject;
    }

    public void onError(@NotNull Exception error) {
        Intrinsics.checkNotNullParameter(error, "error");
        DeviceLog.debug("GetTopics exception: " + error);
        this.eventSender.sendEvent(WebViewEventCategory.TOPICS, TopicsEvents.NOT_AVAILABLE, TopicsErrors.ERROR_EXCEPTION, error.toString());
    }

    public void onResult(@NotNull b result) {
        Intrinsics.checkNotNullParameter(result, "result");
        JSONArray jSONArray = new JSONArray();
        List<c> a10 = result.a();
        Intrinsics.checkNotNullExpressionValue(a10, "result.topics");
        for (c it : a10) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            jSONArray.put(formatTopic(it));
        }
        IEventSender iEventSender = this.eventSender;
        WebViewEventCategory webViewEventCategory = WebViewEventCategory.TOPICS;
        TopicsEvents topicsEvents = TopicsEvents.TOPICS_AVAILABLE;
        String jSONArray2 = jSONArray.toString();
        Intrinsics.checkNotNullExpressionValue(jSONArray2, "resultArray.toString()");
        iEventSender.sendEvent(webViewEventCategory, topicsEvents, jSONArray2);
    }
}
