/**
 * @file    morpho_effect_transition_book.h
 * @brief   Morpho Transition Effect "BOOK" module.
 *
 * effect_name     ...  "TR_BOOK"
 * needs_image_num ...  2
 *
 * Copyright (C) 2009 Morpho, Inc.
 */
#ifndef MORPHO_EFFECT_TRANSTION_BOOK_H
#define MORPHO_EFFECT_TRANSTION_BOOK_H

#ifdef __cplusplus
extern "C" {
#endif

/**  
 * "TR_BOOK" エフェクトのパラメータ.
 * morpho_EffectEngine_setEffectParam() で設定してください。
 */
typedef struct {
    int renders2x2; /**< 2x2描画を行うかどうか */
    int color_r; /**< 背景色(r成分) */
    int color_g; /**< 背景色(g成分) */
    int color_b; /**< 背景色(b成分) */
    const morpho_ImageData* p_bg_image;  /**< 背景画像. */
    int draw_all_bg; /**<背景色、背景画像を出力画像全体に描画するかどうか 0…塗りつぶさない 1…指定rectのみ 2…出力画像全体 */
    int reverse; /**<逆再生するかどうか 0..しない(順再生) 1..する */
} morpho_EffectTransitionBookParam;

#ifdef __cplusplus
} /* extern "C" { */
#endif

#endif /* #ifndef MORPHO_EFFECT_TRANSTION_BOOK_H */
