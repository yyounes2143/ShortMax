package io.bidmachine;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Collection;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
/* loaded from: classes7.dex */
public class UrlProvider {
    @NonNull
    private static final String PATH_AUCTION = "auction";
    @NonNull
    private static final String PATH_INIT = "init";
    @NonNull
    private static final String PATH_RTB = "rtb";
    @NonNull
    private static final String PATH_V3 = "v3";
    @Nullable
    private static String auctionUrlFromInit;
    @Nullable
    private static String auctionUrlFromSuccessRequest;
    @NonNull
    private static final String DEF_BASE_URL = "https://api.bidmachine.io";
    @NonNull
    private static final String[] DEF_BASE_URLS = {DEF_BASE_URL, "https://x.everestop.io", "https://x.blueduckredapple.com", "https://x.thecatmachine.com"};
    @NonNull
    private static final Queue<String> INIT_URL_QUEUE = new ConcurrentLinkedQueue();
    @NonNull
    private static final Queue<String> AUCTION_URL_QUEUE = new ConcurrentLinkedQueue();

    static {
        setupUrls();
    }

    @NonNull
    private static String createAuctionUrl(@NonNull Uri uri) {
        return uri.buildUpon().appendPath(PATH_AUCTION).appendPath(PATH_RTB).appendPath(PATH_V3).toString();
    }

    @NonNull
    private static String createInitUrl(@NonNull Uri uri) {
        return uri.buildUpon().appendPath(PATH_AUCTION).appendPath(PATH_INIT).toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static Queue<String> getAuctionUrlQueue() {
        if (!TextUtils.isEmpty(auctionUrlFromInit)) {
            return new ConcurrentLinkedQueue<String>() { // from class: io.bidmachine.UrlProvider.1
                {
                    add(UrlProvider.auctionUrlFromInit);
                }
            };
        }
        if (!TextUtils.isEmpty(auctionUrlFromSuccessRequest)) {
            return new ConcurrentLinkedQueue<String>() { // from class: io.bidmachine.UrlProvider.2
                {
                    add(UrlProvider.auctionUrlFromSuccessRequest);
                }
            };
        }
        return new ConcurrentLinkedQueue(AUCTION_URL_QUEUE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static Queue<String> getInitUrlQueue() {
        return new ConcurrentLinkedQueue(INIT_URL_QUEUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$setEndpoint$0(String str) {
        return String.format("Endpoint has an invalid format - %s", str);
    }

    @VisibleForTesting
    static void reset() {
        setupUrls();
        auctionUrlFromInit = null;
        auctionUrlFromSuccessRequest = null;
    }

    static void setAuctionUrl(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Queue<String> queue = AUCTION_URL_QUEUE;
        queue.clear();
        queue.add(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void setAuctionUrlFromInit(@NonNull String str) {
        synchronized (UrlProvider.class) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            auctionUrlFromInit = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setAuctionUrlFromSuccessRequest(@NonNull String str) {
        if (auctionUrlFromSuccessRequest == null && !TextUtils.isEmpty(str)) {
            auctionUrlFromSuccessRequest = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setEndpoint(@NonNull final String str) {
        if (!io.bidmachine.core.g.O(str)) {
            io.bidmachine.core.a.e(new hr.b() { // from class: io.bidmachine.u5
                @Override // hr.b
                public final Object get() {
                    String lambda$setEndpoint$0;
                    lambda$setEndpoint$0 = UrlProvider.lambda$setEndpoint$0(str);
                    return lambda$setEndpoint$0;
                }
            });
        } else if (j2.e().z()) {
            io.bidmachine.core.a.g("Can't change endpoint url after initialization");
        } else {
            Uri parse = Uri.parse(str);
            setInitUrl(createInitUrl(parse));
            setAuctionUrl(createAuctionUrl(parse));
        }
    }

    static void setInitUrl(@NonNull String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Queue<String> queue = INIT_URL_QUEUE;
        queue.clear();
        queue.add(str);
    }

    private static void setupAuctionUrls(@NonNull Collection<String> collection, @NonNull String[] strArr) {
        collection.clear();
        for (String str : strArr) {
            collection.add(createAuctionUrl(Uri.parse(str)));
        }
    }

    private static void setupInitUrls(@NonNull Collection<String> collection, @NonNull String[] strArr) {
        collection.clear();
        for (String str : strArr) {
            collection.add(createInitUrl(Uri.parse(str)));
        }
    }

    @VisibleForTesting
    static void setupUrls() {
        Queue<String> queue = INIT_URL_QUEUE;
        String[] strArr = DEF_BASE_URLS;
        setupInitUrls(queue, strArr);
        setupAuctionUrls(AUCTION_URL_QUEUE, strArr);
    }
}
