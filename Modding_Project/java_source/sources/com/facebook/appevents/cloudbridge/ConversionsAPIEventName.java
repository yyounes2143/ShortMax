package com.facebook.appevents.cloudbridge;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: AppEventsConversionsAPITransformer.kt */
@Metadata
/* loaded from: classes3.dex */
public enum ConversionsAPIEventName {
    UNLOCKED_ACHIEVEMENT("AchievementUnlocked"),
    ACTIVATED_APP("ActivateApp"),
    ADDED_PAYMENT_INFO("AddPaymentInfo"),
    ADDED_TO_CART("AddToCart"),
    ADDED_TO_WISHLIST("AddToWishlist"),
    COMPLETED_REGISTRATION("CompleteRegistration"),
    VIEWED_CONTENT("ViewContent"),
    INITIATED_CHECKOUT("InitiateCheckout"),
    ACHIEVED_LEVEL("LevelAchieved"),
    PURCHASED("Purchase"),
    RATED("Rate"),
    SEARCHED("Search"),
    SPENT_CREDITS("SpentCredits"),
    COMPLETED_TUTORIAL("TutorialCompletion");
    
    @NotNull
    private final String rawValue;

    ConversionsAPIEventName(String str) {
        this.rawValue = str;
    }

    @NotNull
    public final String getRawValue() {
        return this.rawValue;
    }
}
